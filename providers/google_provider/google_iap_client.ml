(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_iap_client__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_iap_client__timeouts *)

type google_iap_client = {
  brand : string;
      (** Identifier of the brand to which this client
is attached to. The format is
'projects/{project_number}/brands/{brand_id}/identityAwareProxyClients/{client_id}'. *)
  display_name : string;
      (** Human-friendly name given to the OAuth client. *)
  timeouts : google_iap_client__timeouts option;
}
[@@deriving yojson_of]
(** google_iap_client *)

let google_iap_client ?timeouts ~brand ~display_name __resource_id =
  let __resource_type = "google_iap_client" in
  let __resource = { brand; display_name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_client __resource);
  ()