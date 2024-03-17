(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_iap_client__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_iap_client__timeouts *)

type google_iap_client = {
  brand : string prop;
      (** Identifier of the brand to which this client
is attached to. The format is
'projects/{project_number}/brands/{brand_id}/identityAwareProxyClients/{client_id}'. *)
  display_name : string prop;
      (** Human-friendly name given to the OAuth client. *)
  id : string prop option; [@option]  (** id *)
  timeouts : google_iap_client__timeouts option;
}
[@@deriving yojson_of]
(** google_iap_client *)

type t = {
  brand : string prop;
  client_id : string prop;
  display_name : string prop;
  id : string prop;
  secret : string prop;
}

let google_iap_client ?id ?timeouts ~brand ~display_name
    __resource_id =
  let __resource_type = "google_iap_client" in
  let __resource =
    ({ brand; display_name; id; timeouts } : google_iap_client)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_client __resource);
  let __resource_attributes =
    ({
       brand = Prop.computed __resource_type __resource_id "brand";
       client_id =
         Prop.computed __resource_type __resource_id "client_id";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       secret = Prop.computed __resource_type __resource_id "secret";
     }
      : t)
  in
  __resource_attributes
