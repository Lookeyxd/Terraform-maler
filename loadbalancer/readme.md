# Terraform Azure load balancer Oppsett

Denne Terraform-konfigurasjonen setter opp en Azure load balancer med en HTTP-probe og en regel konfigurert for TCP-trafikk på port 3306. Oppsettet inkluderer en backend-adressepool for å administrere måltjenerne.

## Reqs

- Terraform
- En eksisterende Azure-ressursgruppe
- Et eksisterende subnett i det virtuelle nettverket

## Konfigurasjon

### Variabler

Spesifikke variabler i `terraform.tfvars`:

- `location`: Azure-regionen hvor ressursene skal opprettes (f.eks., "West Europe").
- `resource_group_name`: Navnet på Azure-ressursgruppen der ressursene vil bli opprettet.
- `subnet_id`: ID-en til subnettet hvor load balancerens frontend-IP-konfigurasjon vil bli tilordnet.

### Bruksanvisning

1. Klon dette repoet og naviger til prosjektmappen.
2. Rediger `terraform.tfvars` etter behov:

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
    ```

### Utdataverdier

- `lb_id`: ID-en til den opprettede load balanceren.

### Opprettede ressurser

- **Azure load balancer**: Konfigurert med standard SKU og TCP-protokoll på port 3306.
- **Backend-adresspool**: En pool som inneholder backend-serverne for lastbalansering.
- **Health Probe**: HTTP-probe konfigurert for TCP-trafikk på port 3306.
- **load balancer-regel**: Dirigerer TCP-trafikk fra frontend til backend på på port 3306.

## Notater

Denne konfigurasjonen forutsetter at subnettet og ressursgruppen allerede eksisterer. Endre `main.tf` etter behov for å tilpasse oppsettet.