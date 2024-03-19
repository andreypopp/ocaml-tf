(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_secret_manager_secret_version *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_secret_manager_secret_version ?deletion_policy ?enabled
    ?id ?is_secret_data_base64 ?timeouts ~secret ~secret_data () :
    google_secret_manager_secret_version =
  {
    deletion_policy;
    enabled;
    id;
    is_secret_data_base64;
    secret;
    secret_data;
    timeouts;
  }

type t = {
  create_time : string prop;
  deletion_policy : string prop;
  destroy_time : string prop;
  enabled : bool prop;
  id : string prop;
  is_secret_data_base64 : bool prop;
  name : string prop;
  secret : string prop;
  secret_data : string prop;
  version : string prop;
}

let register ?tf_module ?deletion_policy ?enabled ?id
    ?is_secret_data_base64 ?timeouts ~secret ~secret_data
    __resource_id =
  let __resource_type = "google_secret_manager_secret_version" in
  let __resource =
    google_secret_manager_secret_version ?deletion_policy ?enabled
      ?id ?is_secret_data_base64 ?timeouts ~secret ~secret_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_secret_manager_secret_version __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       deletion_policy =
         Prop.computed __resource_type __resource_id
           "deletion_policy";
       destroy_time =
         Prop.computed __resource_type __resource_id "destroy_time";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       is_secret_data_base64 =
         Prop.computed __resource_type __resource_id
           "is_secret_data_base64";
       name = Prop.computed __resource_type __resource_id "name";
       secret = Prop.computed __resource_type __resource_id "secret";
       secret_data =
         Prop.computed __resource_type __resource_id "secret_data";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
