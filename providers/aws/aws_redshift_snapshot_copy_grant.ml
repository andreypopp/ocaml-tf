(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_snapshot_copy_grant = {
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  snapshot_copy_grant_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_snapshot_copy_grant) -> ()

let yojson_of_aws_redshift_snapshot_copy_grant =
  (function
   | {
       id = v_id;
       kms_key_id = v_kms_key_id;
       snapshot_copy_grant_name = v_snapshot_copy_grant_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_snapshot_copy_grant_name
         in
         ("snapshot_copy_grant_name", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshift_snapshot_copy_grant ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_snapshot_copy_grant

[@@@deriving.end]

let aws_redshift_snapshot_copy_grant ?id ?kms_key_id ?tags ?tags_all
    ~snapshot_copy_grant_name () : aws_redshift_snapshot_copy_grant =
  { id; kms_key_id; snapshot_copy_grant_name; tags; tags_all }

type t = {
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  snapshot_copy_grant_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?kms_key_id ?tags ?tags_all ~snapshot_copy_grant_name
    __id =
  let __type = "aws_redshift_snapshot_copy_grant" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       snapshot_copy_grant_name =
         Prop.computed __type __id "snapshot_copy_grant_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_snapshot_copy_grant
        (aws_redshift_snapshot_copy_grant ?id ?kms_key_id ?tags
           ?tags_all ~snapshot_copy_grant_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_id ?tags ?tags_all
    ~snapshot_copy_grant_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_id ?tags ?tags_all ~snapshot_copy_grant_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
