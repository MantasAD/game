#include "cbase.h"
#include "mom_weapon_parse.h"
#include "weapon_base.h"

#include "tier0/memdbgon.h"

//--------------------------------------------------------------------------------------------------------------
static const char *WeaponNames[WEAPON_MAX] = {
    "weapon_none",         "weapon_momentum_pistol",  "weapon_momentum_rifle", "weapon_momentum_shotgun",
    "weapon_momentum_smg", "weapon_momentum_sniper",  "weapon_momentum_lmg",   "weapon_momentum_grenade",
    "weapon_knife",        "weapon_momentum_paintgun","weapon_momentum_rocketlauncher"};

//--------------------------------------------------------------------------------------------------------------
CWeaponInfo *GetWeaponInfo(CWeaponID weaponID)
{
    if (weaponID == WEAPON_NONE)
        return nullptr;

    const char *weaponName = WeaponNames[weaponID];
    WEAPON_FILE_INFO_HANDLE hWpnInfo = LookupWeaponInfoSlot(weaponName);
    if (hWpnInfo == GetInvalidWeaponInfoHandle())
    {
        return nullptr;
    }

    CWeaponInfo *pWeaponInfo = dynamic_cast<CWeaponInfo *>(GetFileWeaponInfoFromHandle(hWpnInfo));

    return pWeaponInfo;
}

CWeaponInfo::CWeaponInfo()
    : m_iCrosshairMinDistance(4), m_iCrosshairDeltaDistance(3), m_iPenetration(1), m_iDamage(42),
      m_flRange(8192.0f), m_flRangeModifier(0.98f), m_iBullets(1)
{
    m_szAddonModel[0] = '\0';
    m_szDroppedModel[0] = '\0';
    m_szSilencerModel[0] = '\0';
}

FileWeaponInfo_t *CreateWeaponInfo() { return new CWeaponInfo(); }

void CWeaponInfo::Parse(KeyValues *pKeyValuesData, const char *szWeaponName)
{
    BaseClass::Parse(pKeyValuesData, szWeaponName);

    m_iCrosshairMinDistance = pKeyValuesData->GetInt("CrosshairMinDistance", 4);
    m_iCrosshairDeltaDistance = pKeyValuesData->GetInt("CrosshairDeltaDistance", 3);

    m_iPenetration = pKeyValuesData->GetInt("Penetration", 1);
    m_iDamage = pKeyValuesData->GetInt("Damage", 42); // Douglas Adams 1952 - 2001
    m_flRange = pKeyValuesData->GetFloat("Range", 8192.0f);
    m_flRangeModifier = pKeyValuesData->GetFloat("RangeModifier", 0.98f);
    m_iBullets = pKeyValuesData->GetInt("Bullets", 1);

    // Read the addon model.
    Q_strncpy(m_szAddonModel, pKeyValuesData->GetString("AddonModel"), sizeof(m_szAddonModel));

    // Read the dropped model.
    Q_strncpy(m_szDroppedModel, pKeyValuesData->GetString("DroppedModel"), sizeof(m_szDroppedModel));

    // Read the silencer model.
    Q_strncpy(m_szSilencerModel, pKeyValuesData->GetString("SilencerModel"), sizeof(m_szSilencerModel));

#ifndef CLIENT_DLL
    // Enforce consistency for the weapon here, since that way we don't need to save off the model bounds
    // for all time.
    // engine->ForceExactFile( UTIL_VarArgs("scripts/%s.ctx", szWeaponName ) );

    // Model bounds are rounded to the nearest integer, then extended by 1
    engine->ForceModelBounds(szWorldModel, Vector(-15, -12, -18), Vector(44, 16, 19));
    if (m_szAddonModel[0])
    {
        engine->ForceModelBounds(m_szAddonModel, Vector(-5, -5, -6), Vector(13, 5, 7));
    }
    if (m_szSilencerModel[0])
    {
        engine->ForceModelBounds(m_szSilencerModel, Vector(-15, -12, -18), Vector(44, 16, 19));
    }
#endif // !CLIENT_DLL
}
