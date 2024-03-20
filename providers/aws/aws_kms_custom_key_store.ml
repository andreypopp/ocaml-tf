(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_kms_custom_key_store = {
  cloud_hsm_cluster_id : string prop;
  custom_key_store_name : string prop;
  id : string prop option; [@option]
  key_store_password : string prop;
  trust_anchor_certificate : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_custom_key_store) -> ()

let yojson_of_aws_kms_custom_key_store =
  (function
   | {
       cloud_hsm_cluster_id = v_cloud_hsm_cluster_id;
       custom_key_store_name = v_custom_key_store_name;
       id = v_id;
       key_store_password = v_key_store_password;
       trust_anchor_certificate = v_trust_anchor_certificate;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trust_anchor_certificate
         in
         ("trust_anchor_certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_store_password
         in
         ("key_store_password", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_key_store_name
         in
         ("custom_key_store_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cloud_hsm_cluster_id
         in
         ("cloud_hsm_cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_kms_custom_key_store -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_custom_key_store

[@@@deriving.end]

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
