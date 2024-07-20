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

type routing_configuration = {
  agent_version : string prop;
  provisioned_throughput : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_configuration) -> ()

let yojson_of_routing_configuration =
  (function
   | {
       agent_version = v_agent_version;
       provisioned_throughput = v_provisioned_throughput;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_provisioned_throughput
         in
         ("provisioned_throughput", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_agent_version in
         ("agent_version", arg) :: bnds
       in
       `Assoc bnds
    : routing_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_configuration

[@@@deriving.end]

type aws_bedrockagent_agent_alias = {
  agent_alias_name : string prop;
  agent_id : string prop;
  description : string prop option; [@option]
  routing_configuration : routing_configuration list option;
      [@option]
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_bedrockagent_agent_alias) -> ()

let yojson_of_aws_bedrockagent_agent_alias =
  (function
   | {
       agent_alias_name = v_agent_alias_name;
       agent_id = v_agent_id;
       description = v_description;
       routing_configuration = v_routing_configuration;
       tags = v_tags;
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
         match v_routing_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list yojson_of_routing_configuration v
             in
             let bnd = "routing_configuration", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_agent_id in
         ("agent_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_agent_alias_name
         in
         ("agent_alias_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_bedrockagent_agent_alias ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrockagent_agent_alias

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_bedrockagent_agent_alias ?description ?routing_configuration
    ?tags ?timeouts ~agent_alias_name ~agent_id () :
    aws_bedrockagent_agent_alias =
  {
    agent_alias_name;
    agent_id;
    description;
    routing_configuration;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  agent_alias_arn : string prop;
  agent_alias_id : string prop;
  agent_alias_name : string prop;
  agent_id : string prop;
  description : string prop;
  id : string prop;
  routing_configuration : routing_configuration list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?routing_configuration ?tags ?timeouts
    ~agent_alias_name ~agent_id __id =
  let __type = "aws_bedrockagent_agent_alias" in
  let __attrs =
    ({
       tf_name = __id;
       agent_alias_arn = Prop.computed __type __id "agent_alias_arn";
       agent_alias_id = Prop.computed __type __id "agent_alias_id";
       agent_alias_name =
         Prop.computed __type __id "agent_alias_name";
       agent_id = Prop.computed __type __id "agent_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       routing_configuration =
         Prop.computed __type __id "routing_configuration";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrockagent_agent_alias
        (aws_bedrockagent_agent_alias ?description
           ?routing_configuration ?tags ?timeouts ~agent_alias_name
           ~agent_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?routing_configuration ?tags
    ?timeouts ~agent_alias_name ~agent_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?routing_configuration ?tags ?timeouts
      ~agent_alias_name ~agent_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
