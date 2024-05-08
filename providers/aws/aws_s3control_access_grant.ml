(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_grants_location_configuration = {
  s3_sub_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_grants_location_configuration) -> ()

let yojson_of_access_grants_location_configuration =
  (function
   | { s3_sub_prefix = v_s3_sub_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_sub_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_sub_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_grants_location_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_grants_location_configuration

[@@@deriving.end]

type grantee = {
  grantee_identifier : string prop;
  grantee_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : grantee) -> ()

let yojson_of_grantee =
  (function
   | {
       grantee_identifier = v_grantee_identifier;
       grantee_type = v_grantee_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_grantee_type in
         ("grantee_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_grantee_identifier
         in
         ("grantee_identifier", arg) :: bnds
       in
       `Assoc bnds
    : grantee -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_grantee

[@@@deriving.end]

type aws_s3control_access_grant = {
  access_grants_location_id : string prop;
  account_id : string prop option; [@option]
  permission : string prop;
  s3_prefix_type : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  access_grants_location_configuration :
    access_grants_location_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  grantee : grantee list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3control_access_grant) -> ()

let yojson_of_aws_s3control_access_grant =
  (function
   | {
       access_grants_location_id = v_access_grants_location_id;
       account_id = v_account_id;
       permission = v_permission;
       s3_prefix_type = v_s3_prefix_type;
       tags = v_tags;
       access_grants_location_configuration =
         v_access_grants_location_configuration;
       grantee = v_grantee;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_grantee then bnds
         else
           let arg = (yojson_of_list yojson_of_grantee) v_grantee in
           let bnd = "grantee", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_access_grants_location_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_access_grants_location_configuration)
               v_access_grants_location_configuration
           in
           let bnd = "access_grants_location_configuration", arg in
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
         match v_s3_prefix_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_prefix_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permission in
         ("permission", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_access_grants_location_id
         in
         ("access_grants_location_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3control_access_grant -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3control_access_grant

[@@@deriving.end]

let access_grants_location_configuration ?s3_sub_prefix () :
    access_grants_location_configuration =
  { s3_sub_prefix }

let grantee ~grantee_identifier ~grantee_type () : grantee =
  { grantee_identifier; grantee_type }

let aws_s3control_access_grant ?account_id ?s3_prefix_type ?tags
    ?(access_grants_location_configuration = []) ?(grantee = [])
    ~access_grants_location_id ~permission () :
    aws_s3control_access_grant =
  {
    access_grants_location_id;
    account_id;
    permission;
    s3_prefix_type;
    tags;
    access_grants_location_configuration;
    grantee;
  }

type t = {
  tf_name : string;
  access_grant_arn : string prop;
  access_grant_id : string prop;
  access_grants_location_id : string prop;
  account_id : string prop;
  grant_scope : string prop;
  id : string prop;
  permission : string prop;
  s3_prefix_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?account_id ?s3_prefix_type ?tags
    ?(access_grants_location_configuration = []) ?(grantee = [])
    ~access_grants_location_id ~permission __id =
  let __type = "aws_s3control_access_grant" in
  let __attrs =
    ({
       tf_name = __id;
       access_grant_arn =
         Prop.computed __type __id "access_grant_arn";
       access_grant_id = Prop.computed __type __id "access_grant_id";
       access_grants_location_id =
         Prop.computed __type __id "access_grants_location_id";
       account_id = Prop.computed __type __id "account_id";
       grant_scope = Prop.computed __type __id "grant_scope";
       id = Prop.computed __type __id "id";
       permission = Prop.computed __type __id "permission";
       s3_prefix_type = Prop.computed __type __id "s3_prefix_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_access_grant
        (aws_s3control_access_grant ?account_id ?s3_prefix_type ?tags
           ~access_grants_location_configuration ~grantee
           ~access_grants_location_id ~permission ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?s3_prefix_type ?tags
    ?(access_grants_location_configuration = []) ?(grantee = [])
    ~access_grants_location_id ~permission __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?s3_prefix_type ?tags
      ~access_grants_location_configuration ~grantee
      ~access_grants_location_id ~permission __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
