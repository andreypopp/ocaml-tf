(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_backend__credentials__authorization = {
  parameter : string prop option; [@option]  (** parameter *)
  scheme : string prop option; [@option]  (** scheme *)
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__credentials__authorization *)

type azurerm_api_management_backend__credentials = {
  certificate : string prop list option; [@option]
      (** certificate *)
  header : (string * string prop) list option; [@option]
      (** header *)
  query : (string * string prop) list option; [@option]  (** query *)
  authorization :
    azurerm_api_management_backend__credentials__authorization list;
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__credentials *)

type azurerm_api_management_backend__proxy = {
  password : string prop option; [@option]  (** password *)
  url : string prop;  (** url *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__proxy *)

type azurerm_api_management_backend__service_fabric_cluster__server_x509_name = {
  issuer_certificate_thumbprint : string prop;
      (** issuer_certificate_thumbprint *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__service_fabric_cluster__server_x509_name *)

type azurerm_api_management_backend__service_fabric_cluster = {
  client_certificate_id : string prop option; [@option]
      (** client_certificate_id *)
  client_certificate_thumbprint : string prop option; [@option]
      (** client_certificate_thumbprint *)
  management_endpoints : string prop list;
      (** management_endpoints *)
  max_partition_resolution_retries : float prop;
      (** max_partition_resolution_retries *)
  server_certificate_thumbprints : string prop list option; [@option]
      (** server_certificate_thumbprints *)
  server_x509_name :
    azurerm_api_management_backend__service_fabric_cluster__server_x509_name
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__service_fabric_cluster *)

type azurerm_api_management_backend__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__timeouts *)

type azurerm_api_management_backend__tls = {
  validate_certificate_chain : bool prop option; [@option]
      (** validate_certificate_chain *)
  validate_certificate_name : bool prop option; [@option]
      (** validate_certificate_name *)
}
[@@deriving yojson_of]
(** azurerm_api_management_backend__tls *)

type azurerm_api_management_backend = {
  api_management_name : string prop;  (** api_management_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
  resource_group_name : string prop;  (** resource_group_name *)
  resource_id : string prop option; [@option]  (** resource_id *)
  title : string prop option; [@option]  (** title *)
  url : string prop;  (** url *)
  credentials : azurerm_api_management_backend__credentials list;
  proxy : azurerm_api_management_backend__proxy list;
  service_fabric_cluster :
    azurerm_api_management_backend__service_fabric_cluster list;
  timeouts : azurerm_api_management_backend__timeouts option;
  tls : azurerm_api_management_backend__tls list;
}
[@@deriving yojson_of]
(** azurerm_api_management_backend *)

type t = {
  api_management_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  protocol : string prop;
  resource_group_name : string prop;
  resource_id : string prop;
  title : string prop;
  url : string prop;
}

let azurerm_api_management_backend ?description ?id ?resource_id
    ?title ?timeouts ~api_management_name ~name ~protocol
    ~resource_group_name ~url ~credentials ~proxy
    ~service_fabric_cluster ~tls __resource_id =
  let __resource_type = "azurerm_api_management_backend" in
  let __resource =
    ({
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
      : azurerm_api_management_backend)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_backend __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       title = Prop.computed __resource_type __resource_id "title";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
