# Terraform Azure Virtuelt Nettverk og Subnett Oppsett

Denne Terraform-konfigurasjonen oppretter et virtuelt nettverk i Azure, to subnett (for web- og databaseservere), og en nettverkssikkerhetsgruppe (NSG) som tillater HTTP-trafikk på port 80.

## Krav

- Terraform
- En eksisterende Azure-ressursgruppe

## Konfigurasjon

### Variabler

Følgende variabler må defineres i `terraform.tfvars`-filen:

- `vnet_name`: Navnet på det virtuelle nettverket (f.eks., "VNet-Prod").
- `location`: Azure-regionen hvor ressursene opprettes (f.eks., "West Europe").
- `resource_group_name`: Navnet på Azure-ressursgruppen.
- `address_space`: En liste med adresseområder for det virtuelle nettverket (f.eks., ["10.0.0.0/16"]).
- `web_subnet_name`: Navn på subnett for web-servere.
- `web_subnet_prefix`: Adresseområde for web-subnettet (f.eks., "10.0.1.0/24").
- `db_subnet_name`: Navn på subnett for databaseservere.
- `db_subnet_prefix`: Adresseområde for database-subnettet (f.eks., "10.0.2.0/24").

### Bruksanvisning

1. Klon dette repositoriet og naviger til prosjektmappen.
2. Spesifikke variabler i `terraform.tfvars`:

    ```hcl
    vnet_name = "Navn på ditt virtuelle nettverk"  # f.eks. "VNet-Prod"
    location = "Din Azure-region"  # f.eks. "West Europe"
    resource_group_name = "Navnet på din ressursgruppe"
    address_space = ["10.0.0.0/16"]  # Tilpass adresseområdet for VNet etter behov
    web_subnet_name = "Navn på web-subnett"  # f.eks. "WebSubnet"
    web_subnet_prefix = "10.0.1.0/24"  # Tilpass adresseområde for web-subnett
    db_subnet_name = "Navn på database-subnett"  # f.eks. "DbSubnet"
    db_subnet_prefix = "10.0.2.0/24"  # Tilpass adresseområde for database-subnett
    ```

3. Initialiser Terraform:

    ```bash
    terraform init
    ```

4. Plan distribusjonen:

    ```bash
    terraform plan
    ```

5. Bruk konfigurasjonen for å distribuere ressursene:

    ```bash
    terraform apply
    
### Utdataverdier

- `vnet_id`: ID-en til det opprettede virtuelle nettverket.
- `web_subnet_id`: ID-en til web-subnettet.
- `db_subnet_id`: ID-en til database-subnettet.

### Opprettede ressurser

- **Azure Virtuelt Nettverk**: Konfigurert med et spesifisert adresseområde.
- **Subnett for web og database**: Separate subnett for web- og databaseservere.
- **Nettverkssikkerhetsgruppe (NSG)**: Konfigurert til å tillate innkommende HTTP-trafikk på port 80 til web-serverne.

## Notater

Denne konfigurasjonen forutsetter at ressursgruppen allerede eksisterer i Azure. Endre `main.tf` etter behov hvis andre tilpasninger er nødvendige.
