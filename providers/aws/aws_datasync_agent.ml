(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_datasync_agent = {
  activation_key : string prop option; [@option]
      (** activation_key *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  name : string prop option; [@option]  (** name *)
  private_link_endpoint : string prop option; [@option]
      (** private_link_endpoint *)
  security_group_arns : string prop list option; [@option]
      (** security_group_arns *)
  subnet_arns : string prop list option; [@option]
      (** subnet_arns *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_endpoint_id : string prop option; [@option]
      (** vpc_endpoint_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_datasync_agent *)

let timeouts ?create () : timeouts = { create }

let aws_datasync_agent ?activation_key ?id ?ip_address ?name
    ?private_link_endpoint ?security_group_arns ?subnet_arns ?tags
    ?tags_all ?vpc_endpoint_id ?timeouts () : aws_datasync_agent =
  {
    activation_key;
    id;
    ip_address;
    name;
    private_link_endpoint;
    security_group_arns;
    subnet_arns;
    tags;
    tags_all;
    vpc_endpoint_id;
    timeouts;
  }

type t = {
  activation_key : string prop;
  arn : string prop;
  id : string prop;
  ip_address : string prop;
  name : string prop;
  private_link_endpoint : string prop;
  security_group_arns : string list prop;
  subnet_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_endpoint_id : string prop;
}

let make ?activation_key ?id ?ip_address ?name ?private_link_endpoint
    ?security_group_arns ?subnet_arns ?tags ?tags_all
    ?vpc_endpoint_id ?timeouts __id =
  let __type = "aws_datasync_agent" in
  let __attrs =
    ({
       activation_key = Prop.computed __type __id "activation_key";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       name = Prop.computed __type __id "name";
       private_link_endpoint =
         Prop.computed __type __id "private_link_endpoint";
       security_group_arns =
         Prop.computed __type __id "security_group_arns";
       subnet_arns = Prop.computed __type __id "subnet_arns";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_agent
        (aws_datasync_agent ?activation_key ?id ?ip_address ?name
           ?private_link_endpoint ?security_group_arns ?subnet_arns
           ?tags ?tags_all ?vpc_endpoint_id ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?activation_key ?id ?ip_address ?name
    ?private_link_endpoint ?security_group_arns ?subnet_arns ?tags
    ?tags_all ?vpc_endpoint_id ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?activation_key ?id ?ip_address ?name ?private_link_endpoint
      ?security_group_arns ?subnet_arns ?tags ?tags_all
      ?vpc_endpoint_id ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
