(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_serverlessapplicationrepository_cloudformation_stack = {
  application_id : string prop;  (** application_id *)
  capabilities : string prop list;  (** capabilities *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  semantic_version : string prop option; [@option]
      (** semantic_version *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_serverlessapplicationrepository_cloudformation_stack *)

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
