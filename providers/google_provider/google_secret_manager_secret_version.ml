(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_secret_manager_secret_version__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_secret_manager_secret_version__timeouts *)

type google_secret_manager_secret_version = {
  deletion_policy : string prop option; [@option]
      (** The deletion policy for the secret version. Setting 'ABANDON' allows the resource
to be abandoned rather than deleted. Setting 'DISABLE' allows the resource to be
disabled rather than deleted. Default is 'DELETE'. Possible values are:
  * DELETE
  * DISABLE
  * ABANDON *)
  enabled : bool prop option; [@option]
      (** The current state of the SecretVersion. *)
  id : string prop option; [@option]  (** id *)
  is_secret_data_base64 : bool prop option; [@option]
      (** If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is. *)
  secret : string prop;  (** Secret Manager secret resource *)
  secret_data : string prop;
      (** The secret data. Must be no larger than 64KiB. *)
  timeouts : google_secret_manager_secret_version__timeouts option;
}
[@@deriving yojson_of]
(** google_secret_manager_secret_version *)

let google_secret_manager_secret_version ?deletion_policy ?enabled
    ?id ?is_secret_data_base64 ?timeouts ~secret ~secret_data
    __resource_id =
  let __resource_type = "google_secret_manager_secret_version" in
  let __resource =
    {
      deletion_policy;
      enabled;
      id;
      is_secret_data_base64;
      secret;
      secret_data;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_secret_manager_secret_version __resource);
  ()
