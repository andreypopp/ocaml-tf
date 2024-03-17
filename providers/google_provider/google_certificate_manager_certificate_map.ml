(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_certificate_manager_certificate_map__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_certificate_manager_certificate_map__timeouts *)

type google_certificate_manager_certificate_map__gclb_targets__ip_configs = {
  ip_address : string prop;  (** ip_address *)
  ports : float prop list;  (** ports *)
}
[@@deriving yojson_of]

type google_certificate_manager_certificate_map__gclb_targets = {
  ip_configs :
    google_certificate_manager_certificate_map__gclb_targets__ip_configs
    list;
      (** ip_configs *)
  target_https_proxy : string prop;  (** target_https_proxy *)
  target_ssl_proxy : string prop;  (** target_ssl_proxy *)
}
[@@deriving yojson_of]

type google_certificate_manager_certificate_map = {
  description : string prop option; [@option]
      (** A human-readable description of the resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Set of labels associated with a Certificate Map resource.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** A user-defined name of the Certificate Map. Certificate Map names must be unique
globally and match the pattern 'projects/*/locations/*/certificateMaps/*'. *)
  project : string prop option; [@option]  (** project *)
  timeouts :
    google_certificate_manager_certificate_map__timeouts option;
}
[@@deriving yojson_of]
(** google_certificate_manager_certificate_map *)

let google_certificate_manager_certificate_map ?description ?id
    ?labels ?project ?timeouts ~name __resource_id =
  let __resource_type =
    "google_certificate_manager_certificate_map"
  in
  let __resource =
    { description; id; labels; name; project; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_certificate_manager_certificate_map __resource);
  ()
