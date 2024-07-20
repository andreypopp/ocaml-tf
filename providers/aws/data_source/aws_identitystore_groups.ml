(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type groups__external_ids = {
  id : string prop;
  issuer : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : groups__external_ids) -> ()

let yojson_of_groups__external_ids =
  (function
   | { id = v_id; issuer = v_issuer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : groups__external_ids -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_groups__external_ids

[@@@deriving.end]

type groups = {
  description : string prop;
  display_name : string prop;
  external_ids : groups__external_ids list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  group_id : string prop;
  identity_store_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : groups) -> ()

let yojson_of_groups =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       external_ids = v_external_ids;
       group_id = v_group_id;
       identity_store_id = v_identity_store_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_store_id
         in
         ("identity_store_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_id in
         ("group_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_ids then bnds
         else
           let arg =
             (yojson_of_list yojson_of_groups__external_ids)
               v_external_ids
           in
           let bnd = "external_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_groups

[@@@deriving.end]

type aws_identitystore_groups = { identity_store_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_identitystore_groups) -> ()

let yojson_of_aws_identitystore_groups =
  (function
   | { identity_store_id = v_identity_store_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_store_id
         in
         ("identity_store_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_identitystore_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_identitystore_groups

[@@@deriving.end]

let aws_identitystore_groups ~identity_store_id () :
    aws_identitystore_groups =
  { identity_store_id }

type t = {
  tf_name : string;
  groups : groups list prop;
  identity_store_id : string prop;
}

let make ~identity_store_id __id =
  let __type = "aws_identitystore_groups" in
  let __attrs =
    ({
       tf_name = __id;
       groups = Prop.computed __type __id "groups";
       identity_store_id =
         Prop.computed __type __id "identity_store_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_identitystore_groups
        (aws_identitystore_groups ~identity_store_id ());
    attrs = __attrs;
  }

let register ?tf_module ~identity_store_id __id =
  let (r : _ Tf_core.resource) = make ~identity_store_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
