(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_ram_resource_share = {
  allow_external_principals : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  permission_arns : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ram_resource_share) -> ()

let yojson_of_aws_ram_resource_share =
  (function
   | {
       allow_external_principals = v_allow_external_principals;
       id = v_id;
       name = v_name;
       permission_arns = v_permission_arns;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_permission_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "permission_arns", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_allow_external_principals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_external_principals", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ram_resource_share -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ram_resource_share

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ram_resource_share ?allow_external_principals ?id
    ?permission_arns ?tags ?tags_all ?timeouts ~name () :
    aws_ram_resource_share =
  {
    allow_external_principals;
    id;
    name;
    permission_arns;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  allow_external_principals : bool prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  permission_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?allow_external_principals ?id ?permission_arns ?tags
    ?tags_all ?timeouts ~name __id =
  let __type = "aws_ram_resource_share" in
  let __attrs =
    ({
       tf_name = __id;
       allow_external_principals =
         Prop.computed __type __id "allow_external_principals";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       permission_arns = Prop.computed __type __id "permission_arns";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ram_resource_share
        (aws_ram_resource_share ?allow_external_principals ?id
           ?permission_arns ?tags ?tags_all ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_external_principals ?id
    ?permission_arns ?tags ?tags_all ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?allow_external_principals ?id ?permission_arns ?tags
      ?tags_all ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
