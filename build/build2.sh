BUILD_DATE="$(date -u +'%Y-%m-%d')"
SPARK_VERSION="$(grep -m 1 spark build.yml | grep -o -P '(?<=").*(?=")')"
HADOOP_VERSION="3.2"



docker build \
  --build-arg build_date="${BUILD_DATE}" \
  --build-arg spark_version="${SPARK_VERSION}" \
  --build-arg hadoop_version="${HADOOP_VERSION}" \
  -f docker/spark-base/Dockerfile \
  -t spark-base:${SPARK_VERSION} .

docker build \
  --build-arg build_date="${BUILD_DATE}" \
  --build-arg spark_version="${SPARK_VERSION}" \
  -f docker/spark-master/Dockerfile \
  -t spark-master:${SPARK_VERSION} .

docker build \
  --build-arg build_date="${BUILD_DATE}" \
  --build-arg spark_version="${SPARK_VERSION}" \
  -f docker/spark-worker/Dockerfile \
  -t spark-worker:${SPARK_VERSION} .
