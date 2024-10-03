local Translations = {
    progress = {
        repair_veh = 'Réparation en cours...',
        clean_veh = 'Nettoyage en cours...',
        repair_vehicleTyres = 'Réparation des pneus en cours...',
        repair_vehicleBody = 'Réparation de la carroseries en cours...',
    },
    success = {
        repaired_veh = 'Véhicule réparé !',
        cleaned_veh = 'Véhicule nettoyé !',
    },
    error = {
        failed_notification = 'Problème lors de l\'utilisation de votre item.',
        not_near_veh = 'Aucun véhicule a proximité',
        inside_veh = 'Vous ne pouvez pas faire ça dans un véhicule',
        out_range_veh = 'Le véhicule est trop éloigné',
    }
}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end