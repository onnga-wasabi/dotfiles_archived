cd `dirname $0`
pip install cudnnenv
cudnnenv install v7-cuda8
cudnnenv activate v7-cuda8
pip install cupy
