(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_api_key = {
  customer_id : string prop option; [@option]  (** customer_id *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_api_gateway_api_key *)

let aws_api_gateway_api_key ?customer_id ?description ?enabled ?id
    ?tags ?tags_all ?value ~name () : aws_api_gateway_api_key =
  {
    customer_id;
    description;
    enabled;
    id;
    name;
    tags;
    tags_all;
    value;
  }

type t = {
  arn : string prop;
  created_date : string prop;
  customer_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  value : string prop;
}

let make ?customer_id ?description ?enabled ?id ?tags ?tags_all
    ?value ~name __id =
  let __type = "aws_api_gateway_api_key" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       customer_id = Prop.computed __type __id "customer_id";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_api_key
        (aws_api_gateway_api_key ?customer_id ?description ?enabled
           ?id ?tags ?tags_all ?value ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_id ?description ?enabled ?id ?tags
    ?tags_all ?value ~name __id =
  let (r : _ Tf_core.resource) =
    make ?customer_id ?description ?enabled ?id ?tags ?tags_all
      ?value ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
