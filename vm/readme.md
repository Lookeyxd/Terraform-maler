# Terraform Azure Virtual Machine Oppsett

Denne Terraform-konfigurasjonen oppretter en Azure Linux Virtual Machine (Debian 12) med en nettverksgrensesnitt (Network Interface) som er tilknyttet et spesifisert subnett.

## Krav

- Terraform
- En eksisterende Azure-ressursgruppe og subnett i det virtuelle nettverket

## Konfigurasjon

### Variabler

Følgende variabler må defineres i `terraform.tfvars`:

- `vm_name`: Navnet på VM-en (f.eks., "ProdVM").
- `location`: Azure-regionen der VM-en skal opprettes (f.eks., "West Europe").
- `resource_group_name`: Navnet på Azure-ressursgruppen.
- `subnet_id`: ID-en til subnettet der VM-en skal plasseres.
- `vm_size`: Størrelsen på VM-en (standard er "Standard_B1s").
- `admin_username`: Brukernavn for VM-administrator.
- `admin_password`: Passord for VM-administrator (sørg for at det er sterkt).

### Bruksanvisning

1. Klon dette repositoriet og naviger til prosjektmappen.
2. Opprett en `terraform.tfvars`-fil med følgende innhold, og tilpass verdiene etter behov:

    ```hcl
    vm_name = "Navn på din VM"  # f.eks. "ProdVM"
    location = "Din Azure-region"  # f.eks. "West Europe"
    resource_group_name = "Navnet på din ressursgruppe"
    subnet_id = "Subnet ID-en"  # Erstatt med faktisk subnet ID
    vm_size = "Standard_B1s"  # Tilpass størrelse på VM etter behov
    admin_username = "Administratorbrukernavn"  # Brukernavn for administrator
    admin_password = "Passord123!"  # Sikkerhetsanbefaling: Bruk et sterkt passord
    ```

3. Initialiser Terraform-arbeidskatalogen:

    ```bash
    terraform init
    ```

4. Forhåndsvis den planlagte distribusjonen:

    ```bash
    terraform plan
    ```

5. Bruk konfigurasjonen for å opprette ressursene:

    ```bash
    terraform apply
    ```

### Utdataverdier

- `vm_id`: ID-en til den opprettede virtuelle maskinen.
- `public_ip_address`: Privat IP-adresse for den tilknyttede nettverksgrensesnittet.

### Opprettede ressurser

- **Azure Virtual Network Interface**: Nettverksgrensesnitt tilknyttet VM-en, plassert i spesifisert subnett.
- **Azure Linux Virtual Machine (Debian 12)**: En Debian 12-basert VM med spesifisert størrelse, administrasjonsbrukernavn, og passord.

## Notater

Denne konfigurasjonen forutsetter at subnettet og ressursgruppen allerede eksisterer i Azure. Tilpass `main.tf` etter behov for andre krav.
