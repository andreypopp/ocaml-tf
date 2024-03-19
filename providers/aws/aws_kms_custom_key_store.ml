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

type aws_kms_custom_key_store = {
  cloud_hsm_cluster_id : string prop;  (** cloud_hsm_cluster_id *)
  custom_key_store_name : string prop;  (** custom_key_store_name *)
  id : string prop option; [@option]  (** id *)
  key_store_password : string prop;  (** key_store_password *)
  trust_anchor_certificate : string prop;
      (** trust_anchor_certificate *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kms_custom_key_store *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kms_custom_key_store ?id ?timeouts ~cloud_hsm_cluster_id
    ~custom_key_store_name ~key_store_password
    ~trust_anchor_certificate () : aws_kms_custom_key_store =
  {
    cloud_hsm_cluster_id;
    custom_key_store_name;
    id;
    key_store_password;
    trust_anchor_certificate;
    timeouts;
  }

type t = {
  cloud_hsm_cluster_id : string prop;
  custom_key_store_name : string prop;
  id : string prop;
  key_store_password : string prop;
  trust_anchor_certificate : string prop;
}

let register ?tf_module ?id ?timeouts ~cloud_hsm_cluster_id
    ~custom_key_store_name ~key_store_password
    ~trust_anchor_certificate __resource_id =
  let __resource_type = "aws_kms_custom_key_store" in
  let __resource =
    aws_kms_custom_key_store ?id ?timeouts ~cloud_hsm_cluster_id
      ~custom_key_store_name ~key_store_password
      ~trust_anchor_certificate ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_custom_key_store __resource);
  let __resource_attributes =
    ({
       cloud_hsm_cluster_id =
         Prop.computed __resource_type __resource_id
           "cloud_hsm_cluster_id";
       custom_key_store_name =
         Prop.computed __resource_type __resource_id
           "custom_key_store_name";
       id = Prop.computed __resource_type __resource_id "id";
       key_store_password =
         Prop.computed __resource_type __resource_id
           "key_store_password";
       trust_anchor_certificate =
         Prop.computed __resource_type __resource_id
           "trust_anchor_certificate";
     }
      : t)
  in
  __resource_attributes
