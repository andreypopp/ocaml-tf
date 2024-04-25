(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sse_configuration = {
  customer_managed_key_enabled : bool prop option; [@option]
  kms_key_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sse_configuration) -> ()

let yojson_of_sse_configuration =
  (function
   | {
       customer_managed_key_enabled = v_customer_managed_key_enabled;
       kms_key_arn = v_kms_key_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_managed_key_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "customer_managed_key_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sse_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sse_configuration

[@@@deriving.end]

type aws_verifiedaccess_group = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  policy_document : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  verifiedaccess_instance_id : string prop;
  sse_configuration : sse_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_verifiedaccess_group) -> ()

let yojson_of_aws_verifiedaccess_group =
  (function
   | {
       description = v_description;
       id = v_id;
       policy_document = v_policy_document;
       tags = v_tags;
       tags_all = v_tags_all;
       verifiedaccess_instance_id = v_verifiedaccess_instance_id;
       sse_configuration = v_sse_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sse_configuration
             v_sse_configuration
         in
         ("sse_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_verifiedaccess_instance_id
         in
         ("verifiedaccess_instance_id", arg) :: bnds
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
         match v_policy_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_document", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_verifiedaccess_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_verifiedaccess_group

[@@@deriving.end]

let sse_configuration ?customer_managed_key_enabled ?kms_key_arn () :
    sse_configuration =
  { customer_managed_key_enabled; kms_key_arn }

let aws_verifiedaccess_group ?description ?id ?policy_document ?tags
    ?tags_all ?(sse_configuration = []) ~verifiedaccess_instance_id
    () : aws_verifiedaccess_group =
  {
    description;
    id;
    policy_document;
    tags;
    tags_all;
    verifiedaccess_instance_id;
    sse_configuration;
  }

type t = {
  creation_time : string prop;
  deletion_time : string prop;
  description : string prop;
  id : string prop;
  last_updated_time : string prop;
  owner : string prop;
  policy_document : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  verifiedaccess_group_arn : string prop;
  verifiedaccess_group_id : string prop;
  verifiedaccess_instance_id : string prop;
}

let make ?description ?id ?policy_document ?tags ?tags_all
    ?(sse_configuration = []) ~verifiedaccess_instance_id __id =
  let __type = "aws_verifiedaccess_group" in
  let __attrs =
    ({
       creation_time = Prop.computed __type __id "creation_time";
       deletion_time = Prop.computed __type __id "deletion_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       owner = Prop.computed __type __id "owner";
       policy_document = Prop.computed __type __id "policy_document";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       verifiedaccess_group_arn =
         Prop.computed __type __id "verifiedaccess_group_arn";
       verifiedaccess_group_id =
         Prop.computed __type __id "verifiedaccess_group_id";
       verifiedaccess_instance_id =
         Prop.computed __type __id "verifiedaccess_instance_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedaccess_group
        (aws_verifiedaccess_group ?description ?id ?policy_document
           ?tags ?tags_all ~sse_configuration
           ~verifiedaccess_instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?policy_document ?tags
    ?tags_all ?(sse_configuration = []) ~verifiedaccess_instance_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?policy_document ?tags ?tags_all
      ~sse_configuration ~verifiedaccess_instance_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
