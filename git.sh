git add .
git commit -m $1
cd teme
git add .
git commit -m $1
git push --recurse-submodules=on-demand origin main
