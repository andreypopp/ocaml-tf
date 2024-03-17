(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_backend__credentials__authorization = {
  parameter : string option; [@option]  (** parameter *)
  scheme : string option; [@option]  (** scheme *)
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__credentials__authorization *)

type azurerm_api_management_backend__credentials = {
  certificate : string list option; [@option]  (** certificate *)
  header : (string * string) list option; [@option]  (** header *)
  query : (string * string) list option; [@option]  (** query *)
  authorization :
    azurerm_api_management_backend__credentials__authorization list;
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__credentials *)

type azurerm_api_management_backend__proxy = {
  password : string option; [@option]  (** password *)
  url : string;  (** url *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__proxy *)

type azurerm_api_management_backend__service_fabric_cluster__server_x509_name = {
  issuer_certificate_thumbprint : string;
      (** issuer_certificate_thumbprint *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__service_fabric_cluster__server_x509_name *)

type azurerm_api_management_backend__service_fabric_cluster = {
  client_certificate_id : string option; [@option]
      (** client_certificate_id *)
  client_certificate_thumbprint : string option; [@option]
      (** client_certificate_thumbprint *)
  management_endpoints : string list;  (** management_endpoints *)
  max_partition_resolution_retries : float;
      (** max_partition_resolution_retries *)
  server_certificate_thumbprints : string list option; [@option]
      (** server_certificate_thumbprints *)
  server_x509_name :
    azurerm_api_management_backend__service_fabric_cluster__server_x509_name
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__service_fabric_cluster *)

type azurerm_api_management_backend__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__timeouts *)

type azurerm_api_management_backend__tls = {
  validate_certificate_chain : bool option; [@option]
      (** validate_certificate_chain *)
  validate_certificate_name : bool option; [@option]
      (** validate_certificate_name *)
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__tls *)

type azurerm_api_management_backend = {
  api_management_name : string;  (** api_management_name *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  protocol : string;  (** protocol *)
  resource_group_name : string;  (** resource_group_name *)
  resource_id : string option; [@option]  (** resource_id *)
  title : string option; [@option]  (** title *)
  url : string;  (** url *)
  credentials : azurerm_api_management_backend__credentials list;
  proxy : azurerm_api_management_backend__proxy list;
  service_fabric_cluster :
    azurerm_api_management_backend__service_fabric_cluster list;
  timeouts : azurerm_api_management_backend__timeouts option;
  tls : azurerm_api_management_backend__tls list;
}
[@@deriving yojson_of]
(** azurerm_api_management_backend *)

let azurerm_api_management_backend ?description ?id ?resource_id
    ?title ?timeouts ~api_management_name ~name ~protocol
    ~resource_group_name ~url ~credentials ~proxy
    ~service_fabric_cluster ~tls __resource_id =
  let __resource_type = "azurerm_api_management_backend" in
  let __resource =
    {
      api_management_name;
      description;
      id;
      name;
      protocol;
      resource_group_name;
      resource_id;
      title;
      url;
      credentials;
      proxy;
      service_fabric_cluster;
      timeouts;
      tls;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_backend __resource);
  ()
