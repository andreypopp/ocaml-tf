(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_bedrockagent_agent_knowledge_base_association = {
  agent_id : string prop;
  agent_version : string prop option; [@option]
  description : string prop;
  knowledge_base_id : string prop;
  knowledge_base_state : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_bedrockagent_agent_knowledge_base_association) -> ()

let yojson_of_aws_bedrockagent_agent_knowledge_base_association =
  (function
   | {
       agent_id = v_agent_id;
       agent_version = v_agent_version;
       description = v_description;
       knowledge_base_id = v_knowledge_base_id;
       knowledge_base_state = v_knowledge_base_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_knowledge_base_state
         in
         ("knowledge_base_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_knowledge_base_id
         in
         ("knowledge_base_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         match v_agent_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "agent_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_agent_id in
         ("agent_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_bedrockagent_agent_knowledge_base_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrockagent_agent_knowledge_base_association

[@@@deriving.end]

let aws_bedrockagent_agent_knowledge_base_association ?agent_version
    ~agent_id ~description ~knowledge_base_id ~knowledge_base_state
    () : aws_bedrockagent_agent_knowledge_base_association =
  {
    agent_id;
    agent_version;
    description;
    knowledge_base_id;
    knowledge_base_state;
  }

type t = {
  tf_name : string;
  agent_id : string prop;
  agent_version : string prop;
  description : string prop;
  id : string prop;
  knowledge_base_id : string prop;
  knowledge_base_state : string prop;
}

let make ?agent_version ~agent_id ~description ~knowledge_base_id
    ~knowledge_base_state __id =
  let __type = "aws_bedrockagent_agent_knowledge_base_association" in
  let __attrs =
    ({
       tf_name = __id;
       agent_id = Prop.computed __type __id "agent_id";
       agent_version = Prop.computed __type __id "agent_version";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       knowledge_base_id =
         Prop.computed __type __id "knowledge_base_id";
       knowledge_base_state =
         Prop.computed __type __id "knowledge_base_state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrockagent_agent_knowledge_base_association
        (aws_bedrockagent_agent_knowledge_base_association
           ?agent_version ~agent_id ~description ~knowledge_base_id
           ~knowledge_base_state ());
    attrs = __attrs;
  }

let register ?tf_module ?agent_version ~agent_id ~description
    ~knowledge_base_id ~knowledge_base_state __id =
  let (r : _ Tf_core.resource) =
    make ?agent_version ~agent_id ~description ~knowledge_base_id
      ~knowledge_base_state __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
