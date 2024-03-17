(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_custom_key_store__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kms_custom_key_store__timeouts *)

type aws_kms_custom_key_store = {
  cloud_hsm_cluster_id : string prop;  (** cloud_hsm_cluster_id *)
  custom_key_store_name : string prop;  (** custom_key_store_name *)
  id : string prop option; [@option]  (** id *)
  key_store_password : string prop;  (** key_store_password *)
  trust_anchor_certificate : string prop;
      (** trust_anchor_certificate *)
  timeouts : aws_kms_custom_key_store__timeouts option;
}
[@@deriving yojson_of]
(** aws_kms_custom_key_store *)

let aws_kms_custom_key_store ?id ?timeouts ~cloud_hsm_cluster_id
    ~custom_key_store_name ~key_store_password
    ~trust_anchor_certificate __resource_id =
  let __resource_type = "aws_kms_custom_key_store" in
  let __resource =
    {
      cloud_hsm_cluster_id;
      custom_key_store_name;
      id;
      key_store_password;
      trust_anchor_certificate;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_custom_key_store __resource);
  ()
