(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kms_custom_key_store = {
  custom_key_store_id : string prop option; [@option]
  custom_key_store_name : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_custom_key_store) -> ()

let yojson_of_aws_kms_custom_key_store =
  (function
   | {
       custom_key_store_id = v_custom_key_store_id;
       custom_key_store_name = v_custom_key_store_name;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_custom_key_store_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_key_store_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_key_store_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_key_store_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kms_custom_key_store -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_custom_key_store

[@@@deriving.end]

let aws_kms_custom_key_store ?custom_key_store_id
    ?custom_key_store_name ?id () : aws_kms_custom_key_store =
  { custom_key_store_id; custom_key_store_name; id }

type t = {
  tf_name : string;
  cloud_hsm_cluster_id : string prop;
  connection_state : string prop;
  creation_date : string prop;
  custom_key_store_id : string prop;
  custom_key_store_name : string prop;
  id : string prop;
  trust_anchor_certificate : string prop;
}

let make ?custom_key_store_id ?custom_key_store_name ?id __id =
  let __type = "aws_kms_custom_key_store" in
  let __attrs =
    ({
       tf_name = __id;
       cloud_hsm_cluster_id =
         Prop.computed __type __id "cloud_hsm_cluster_id";
       connection_state =
         Prop.computed __type __id "connection_state";
       creation_date = Prop.computed __type __id "creation_date";
       custom_key_store_id =
         Prop.computed __type __id "custom_key_store_id";
       custom_key_store_name =
         Prop.computed __type __id "custom_key_store_name";
       id = Prop.computed __type __id "id";
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
        (aws_kms_custom_key_store ?custom_key_store_id
           ?custom_key_store_name ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_key_store_id ?custom_key_store_name
    ?id __id =
  let (r : _ Tf_core.resource) =
    make ?custom_key_store_id ?custom_key_store_name ?id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
