# Helm Chart for My-App

This is a sample Helm chart for deploying a simple Nginx application to Kubernetes.

## Chart Structure

```
helm/
├── Chart.yaml          # Chart metadata
├── values.yaml         # Default configuration values
└── template/           # Kubernetes manifest templates
    ├── _helpers.tpl    # Template helpers
    ├── deployment.yaml # Deployment manifest
    ├── service.yaml    # Service manifest
    ├── namespace.yaml  # Namespace manifest
    └── NOTES.txt       # Post-installation notes
```

## Installation

See the main instructions below for how to install this chart.

## Configuration

The following table lists the configurable parameters:

| Parameter | Description | Default |
|-----------|-------------|---------|
| `replicaCount` | Number of replicas | `2` |
| `image.repository` | Image repository | `nginx` |
| `image.tag` | Image tag | `latest` |
| `service.type` | Service type | `LoadBalancer` |
| `service.port` | Service port | `80` |
