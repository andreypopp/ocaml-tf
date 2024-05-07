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

type aws_serverlessapplicationrepository_cloudformation_stack = {
  application_id : string prop;
  capabilities : string prop list;
  id : string prop option; [@option]
  name : string prop;
  parameters : (string * string prop) list option; [@option]
  semantic_version : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_serverlessapplicationrepository_cloudformation_stack) ->
  ()

let yojson_of_aws_serverlessapplicationrepository_cloudformation_stack
    =
  (function
   | {
       application_id = v_application_id;
       capabilities = v_capabilities;
       id = v_id;
       name = v_name;
       parameters = v_parameters;
       semantic_version = v_semantic_version;
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
         match v_semantic_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "semantic_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_capabilities
         in
         ("capabilities", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_serverlessapplicationrepository_cloudformation_stack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_serverlessapplicationrepository_cloudformation_stack

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_serverlessapplicationrepository_cloudformation_stack ?id
    ?parameters ?semantic_version ?tags ?tags_all ?timeouts
    ~application_id ~capabilities ~name () :
    aws_serverlessapplicationrepository_cloudformation_stack =
  {
    application_id;
    capabilities;
    id;
    name;
    parameters;
    semantic_version;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  application_id : string prop;
  capabilities : string list prop;
  id : string prop;
  name : string prop;
  outputs : (string * string) list prop;
  parameters : (string * string) list prop;
  semantic_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?parameters ?semantic_version ?tags ?tags_all ?timeouts
    ~application_id ~capabilities ~name __id =
  let __type =
    "aws_serverlessapplicationrepository_cloudformation_stack"
  in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       capabilities = Prop.computed __type __id "capabilities";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       outputs = Prop.computed __type __id "outputs";
       parameters = Prop.computed __type __id "parameters";
       semantic_version =
         Prop.computed __type __id "semantic_version";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_serverlessapplicationrepository_cloudformation_stack
        (aws_serverlessapplicationrepository_cloudformation_stack ?id
           ?parameters ?semantic_version ?tags ?tags_all ?timeouts
           ~application_id ~capabilities ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parameters ?semantic_version ?tags
    ?tags_all ?timeouts ~application_id ~capabilities ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parameters ?semantic_version ?tags ?tags_all ?timeouts
      ~application_id ~capabilities ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
