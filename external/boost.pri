clebsCheck(boost) {
    win32 {
        isEmpty(BOOSTROOT):BOOSTROOT = $$BASEDIR/../api/boost
        isEmpty(BOOSTINCLUDEDIR):BOOSTINCLUDEDIR = $${BOOSTROOT}/include/boost-1_33_1

        exists($${BOOSTINCLUDEDIR}/boost):CLEBS_DEPENDENCIES *= boost
    }

    unix {
        exists(/usr/include/boost):CLEBS_DEPENDENCIES *= boost
    }
}

clebsDependency(boost) {
    win32 {
        INCLUDEPATH *= $${BOOSTINCLUDEDIR}
    }
}
