variable "environment" {
  description = "Environnement de déploiement (dev, prod, etc.)"
  type        = string
  default     = "dev" # Valeur par défaut, surchargée par le workflow
}

variable "location" {
  description = "Région Azure où la VM sera déployée"
  type        = string
  default     = "France Central"
}

variable "vm_size" {
  description = "Taille de la VM Azure"
  type        = string
  default     = "Standard_B2s"
}

variable "max_bid_price" {
  description = "Prix maximum (USD/heure) pour l'instance Spot"
  type        = number
  default     = 0.02
}

variable "auto_shutdown" {
  description = "Activer l'arrêt automatique de la VM"
  type        = bool
  default     = true
}

variable "shutdown_time" {
  description = "Heure d'arrêt automatique (format HHMM)"
  type        = string
  default     = "1900"
}

variable "resource_group_name" {
  description = "Nom du groupe de ressources"
  type        = string
  default     = "rg-spot-vms"
}

variable "vm_name_prefix" {
  description = "Préfixe pour le nom de la VM"
  type        = string
  default     = "spot-vm"
}