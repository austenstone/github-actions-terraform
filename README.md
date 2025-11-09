# GitHub Actions Terraform

Automated Azure infrastructure deployment using Terraform and GitHub Actions with OIDC authentication.

## 🚀 What This Does

- **Terraform** manages Azure infrastructure (Resource Group + Static Web App)
- **GitHub Actions** automatically deploys on push to `main`
- **OIDC** for secure, keyless authentication to Azure
- **Remote State** stored in Azure Storage with locking

## 🔗 Live Site

[https://black-sky-0510e820f.3.azurestaticapps.net](https://black-sky-0510e820f.3.azurestaticapps.net)

## 🏗️ Infrastructure

- Azure Static Web App (Free tier)
- Resource Group: `rg-github-actions-terraform`
- Terraform State: Azure Storage account `tfstate56202`

## 🔐 Security

- OIDC federated identity (no secrets stored)
- Encrypted state at rest
- State locking enabled
- Environment protection: `production`
