#pragma once

#include "mom_weapon_parse.h"

#if defined(CLIENT_DLL)
#define CWeaponBase C_WeaponBase
#define CMomentumPlayer C_MomentumPlayer
#endif

class CMomentumPlayer;

extern int AliasToWeaponID(const char *alias);
extern const char *WeaponIDToAlias(int id);
extern int GetShellForAmmoType(const char *ammoname);

// These are the names of the ammo types that go in the CAmmoDefs and that the
// weapon script files reference.
#define BULLET_PLAYER_50AE "BULLET_PLAYER_50AE"
#define BULLET_PLAYER_762MM "BULLET_PLAYER_762MM"
#define BULLET_PLAYER_556MM "BULLET_PLAYER_556MM"
#define BULLET_PLAYER_556MM_BOX "BULLET_PLAYER_556MM_BOX"
#define BULLET_PLAYER_338MAG "BULLET_PLAYER_338MAG"
#define BULLET_PLAYER_9MM "BULLET_PLAYER_9MM"
#define BULLET_PLAYER_BUCKSHOT "BULLET_PLAYER_BUCKSHOT"
#define BULLET_PLAYER_45ACP "BULLET_PLAYER_45ACP"
#define BULLET_PLAYER_357SIG "BULLET_PLAYER_357SIG"
#define BULLET_PLAYER_57MM "BULLET_PLAYER_57MM"
#define AMMO_TYPE_HEGRENADE "AMMO_TYPE_HEGRENADE"
#define AMMO_TYPE_FLASHBANG "AMMO_TYPE_FLASHBANG"
#define AMMO_TYPE_SMOKEGRENADE "AMMO_TYPE_SMOKEGRENADE"
#define AMMO_TYPE_PAINT "AMMO_TYPE_PAINT"
#define AMMO_TYPE_ROCKET "AMMO_TYPE_ROCKET"

#define CROSSHAIR_CONTRACT_PIXELS_PER_SECOND 7.0f

// Given an ammo type (like from a weapon's GetPrimaryAmmoType()), this compares it
// against the ammo name you specify.
// MOM_TODO: this should use indexing instead of searching and strcmp()'ing all the time.
bool IsAmmoType(int iAmmoType, const char *pAmmoName);

typedef enum {
    Primary_Mode = 0,
    Secondary_Mode,
} CSWeaponMode;

#if defined(CLIENT_DLL)

//--------------------------------------------------------------------------------------------------------------
/**
*  Returns the client's ID_* value for the currently owned weapon, or ID_NONE if no weapon is owned
*/
CWeaponID GetClientWeaponID(bool primary);

#endif

//--------------------------------------------------------------------------------------------------------------
CWeaponInfo *GetWeaponInfo(CWeaponID weaponID);

class CWeaponBase : public CBaseCombatWeapon
{
  public:
    DECLARE_CLASS(CWeaponBase, CBaseCombatWeapon);
    DECLARE_NETWORKCLASS();
    DECLARE_PREDICTABLE();

    CWeaponBase();

#ifdef GAME_DLL
    DECLARE_DATADESC();

    virtual void CheckRespawn();
    virtual CBaseEntity *Respawn();

    virtual const Vector &GetBulletSpread();
    virtual float GetDefaultAnimSpeed();

    virtual void BulletWasFired(const Vector &vecStart, const Vector &vecEnd);
    virtual bool ShouldRemoveOnRoundRestart();
    virtual bool DefaultReload(int iClipSize1, int iClipSize2, int iActivity);

    void SendReloadEvents();

    void Materialize() OVERRIDE;

    virtual bool IsRemoveable();

#endif

    bool Holster(CBaseCombatWeapon *pSwitchingTo) OVERRIDE;
    void AddViewmodelBob(CBaseViewModel *viewmodel, Vector &origin, QAngle &angles) OVERRIDE;
    float CalcViewmodelBob(void) OVERRIDE;
    // All predicted weapons need to implement and return true
    bool IsPredicted() const OVERRIDE { return true; }

    // Pistols reset m_iShotsFired to 0 when the attack button is released.
    bool IsPistol() const { return GetWeaponID() == WEAPON_PISTOL; }

    CMomentumPlayer *GetPlayerOwner() const;

    virtual float GetMaxSpeed() const; // What's the player's max speed while holding this weapon.

    // Get Momentum-specific weapon data.
    CWeaponInfo const &GetMomWpnData() const;

    // Get specific weapon ID
    virtual CWeaponID GetWeaponID(void) const { return WEAPON_NONE; }

    virtual void SetWeaponModelIndex(const char *pName);

  public:
#if defined(CLIENT_DLL)

    void ProcessMuzzleFlashEvent() OVERRIDE;
    bool OnFireEvent(C_BaseViewModel *pViewModel, const Vector &origin, const QAngle &angles, int event,
                     const char *options) OVERRIDE;
    bool ShouldPredict() OVERRIDE;
    void DrawCrosshair() OVERRIDE;
    void OnDataChanged(DataUpdateType_t type) OVERRIDE;

    virtual bool HideViewModelWhenZoomed(void) { return true; }

    float m_flCrosshairDistance;
    int m_iAmmoLastCheck;
    int m_iAlpha;
    int m_iScopeTextureID;
    int m_iCrosshairTextureID; // for white additive texture

    bool m_bInReloadAnimation;
#else

    virtual bool Reload();
    virtual void Spawn();
    virtual bool KeyValue(const char *szKeyName, const char *szValue);

    virtual bool PhysicsSplash(const Vector &centerPoint, const Vector &normal, float rawSpeed, float scaledSpeed);

#endif

    bool IsUseable();
    bool CanDeploy(void) OVERRIDE;
    void Precache(void) OVERRIDE; // Overridden for CS guns to point to momentum gun overrides
    bool CanBeSelected(void) OVERRIDE;
    virtual Activity GetDeployActivity(void);
    bool DefaultDeploy(char *szViewModel, char *szWeaponModel, int iActivity, char *szAnimExt) OVERRIDE;
    void DefaultTouch(CBaseEntity *pOther) OVERRIDE; // default weapon touch
    virtual bool DefaultPistolReload();

    bool Deploy() OVERRIDE;
    void Drop(const Vector &vecVelocity) OVERRIDE;
    bool PlayEmptySound();
    void ItemPostFrame() OVERRIDE;

    const char *GetViewModel(int viewmodelindex = 0) const OVERRIDE;

    bool m_bDelayFire; // This variable is used to delay the time between subsequent button pressing.
    float m_flAccuracy;

    void SetExtraAmmoCount(int count) { m_iExtraPrimaryAmmo = count; }
    int GetExtraAmmoCount(void) { return m_iExtraPrimaryAmmo; }

  private:
    float m_flDecreaseShotsFired;

    CWeaponBase(const CWeaponBase &);

    int m_iExtraPrimaryAmmo;

    float m_nextPrevOwnerTouchTime;
    CMomentumPlayer *m_prevOwner;

    int m_iDefaultExtraAmmo;
};