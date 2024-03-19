(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type credentials__authorization = {
  parameter : string prop option; [@option]  (** parameter *)
  scheme : string prop option; [@option]  (** scheme *)
}
[@@deriving yojson_of]
(** credentials__authorization *)

type credentials = {
  certificate : string prop list option; [@option]
      (** certificate *)
  header : (string * string prop) list option; [@option]
      (** header *)
  query : (string * string prop) list option; [@option]  (** query *)
  authorization : credentials__authorization list;
}
[@@deriving yojson_of]
(** credentials *)

type proxy = {
  password : string prop option; [@option]  (** password *)
  url : string prop;  (** url *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** proxy *)

type service_fabric_cluster__server_x509_name = {
  issuer_certificate_thumbprint : string prop;
      (** issuer_certificate_thumbprint *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** service_fabric_cluster__server_x509_name *)

type service_fabric_cluster = {
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
  server_x509_name : service_fabric_cluster__server_x509_name list;
}
[@@deriving yojson_of]
(** service_fabric_cluster *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type tls = {
  validate_certificate_chain : bool prop option; [@option]
      (** validate_certificate_chain *)
  validate_certificate_name : bool prop option; [@option]
      (** validate_certificate_name *)
}
[@@deriving yojson_of]
(** tls *)

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
  credentials : credentials list;
  proxy : proxy list;
  service_fabric_cluster : service_fabric_cluster list;
  timeouts : timeouts option;
  tls : tls list;
}
[@@deriving yojson_of]
(** azurerm_api_management_backend *)

let credentials__authorization ?parameter ?scheme () :
    credentials__authorization =
  { parameter; scheme }

let credentials ?certificate ?header ?query ~authorization () :
    credentials =
  { certificate; header; query; authorization }

let proxy ?password ~url ~username () : proxy =
  { password; url; username }

let service_fabric_cluster__server_x509_name
    ~issuer_certificate_thumbprint ~name () :
    service_fabric_cluster__server_x509_name =
  { issuer_certificate_thumbprint; name }

let service_fabric_cluster ?client_certificate_id
    ?client_certificate_thumbprint ?server_certificate_thumbprints
    ~management_endpoints ~max_partition_resolution_retries
    ~server_x509_name () : service_fabric_cluster =
  {
    client_certificate_id;
    client_certificate_thumbprint;
    management_endpoints;
    max_partition_resolution_retries;
    server_certificate_thumbprints;
    server_x509_name;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let tls ?validate_certificate_chain ?validate_certificate_name () :
    tls =
  { validate_certificate_chain; validate_certificate_name }

let azurerm_api_management_backend ?description ?id ?resource_id
    ?title ?timeouts ~api_management_name ~name ~protocol
    ~resource_group_name ~url ~credentials ~proxy
    ~service_fabric_cluster ~tls () : azurerm_api_management_backend
    =
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

let register ?tf_module ?description ?id ?resource_id ?title
    ?timeouts ~api_management_name ~name ~protocol
    ~resource_group_name ~url ~credentials ~proxy
    ~service_fabric_cluster ~tls __resource_id =
  let __resource_type = "azurerm_api_management_backend" in
  let __resource =
    azurerm_api_management_backend ?description ?id ?resource_id
      ?title ?timeouts ~api_management_name ~name ~protocol
      ~resource_group_name ~url ~credentials ~proxy
      ~service_fabric_cluster ~tls ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
