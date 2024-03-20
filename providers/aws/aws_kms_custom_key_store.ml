(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~cloud_hsm_cluster_id ~custom_key_store_name
    ~key_store_password ~trust_anchor_certificate __id =
  let __type = "aws_kms_custom_key_store" in
  let __attrs =
    ({
       cloud_hsm_cluster_id =
         Prop.computed __type __id "cloud_hsm_cluster_id";
       custom_key_store_name =
         Prop.computed __type __id "custom_key_store_name";
       id = Prop.computed __type __id "id";
       key_store_password =
         Prop.computed __type __id "key_store_password";
       trust_anchor_certificate =
         Prop.computed __type __id "trust_anchor_certificate";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_custom_key_store
        (aws_kms_custom_key_store ?id ?timeouts ~cloud_hsm_cluster_id
           ~custom_key_store_name ~key_store_password
           ~trust_anchor_certificate ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cloud_hsm_cluster_id
    ~custom_key_store_name ~key_store_password
    ~trust_anchor_certificate __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cloud_hsm_cluster_id ~custom_key_store_name
      ~key_store_password ~trust_anchor_certificate __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
