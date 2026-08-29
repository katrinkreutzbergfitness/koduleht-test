# koduleht

Katrin Kreutzbergi personaaltreeneri koduleht.

## Kolm keskkonda

1. **Areng** — muudad faile VS Code'is lokaalselt, seejärel `git add -A` ja `git commit`.
2. **Test** — käivita `mine-testi.bat`. Muudatused lähevad aadressile
   https://katrinkreutzbergfitness.github.io/koduleht-test/
3. **Live** — kui test on üle vaadatud ja heaks kiidetud, käivita `mine-live.bat`.
   Muudatused lähevad aadressile https://katrinkreutzberg.ee

Live'i minek ei toimu enam iga commit'i järel automaatselt — see nõuab
`mine-live.bat` käivitamist ja kinnitust.

## Repod

- `origin` = https://github.com/katrinkreutzbergfitness/koduleht (live, haru `main`)
- `test` = https://github.com/katrinkreutzbergfitness/koduleht-test (test, haru `main`)

`test` haru selles repos on peaaegu identne `main`-iga, ainult `CNAME` fail
on eemaldatud (testkeskkond kasutab tasuta github.io aadressi, mitte
kohandatud domeeni).
