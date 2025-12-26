#!/bin/bash

{
  echo "apiVersion: kustomize.config.k8s.io/v1beta1"
  echo "kind: Kustomization"
  echo "resources:"
  ls -d apps/*/ | xargs -n 1 basename | grep -vE "^(_base|zz-core)$" | sort | \
  sed 's/^/  - /'
} > apps/kustomization.yaml

{
  echo "apiVersion: kustomize.config.k8s.io/v1beta1"
  echo "kind: Kustomization"
  echo "resources:"
  ls -d apps/*/ | xargs -n 1 basename | grep -vE "^(_base|zz-core)$" | sort | \
  sed 's|.*|../&/core|' | \
  sed 's/^/  - /'
} > apps/zz-core/kustomization.yaml