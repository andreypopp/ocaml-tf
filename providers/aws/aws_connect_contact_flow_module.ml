(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_connect_contact_flow_module = {
  content : string prop option; [@option]  (** content *)
  content_hash : string prop option; [@option]  (** content_hash *)
  description : string prop option; [@option]  (** description *)
  filename : string prop option; [@option]  (** filename *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_connect_contact_flow_module *)

let aws_connect_contact_flow_module ?content ?content_hash
    ?description ?filename ?id ?tags ?tags_all ~instance_id ~name ()
    : aws_connect_contact_flow_module =
  {
    content;
    content_hash;
    description;
    filename;
    id;
    instance_id;
    name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  contact_flow_module_id : string prop;
  content : string prop;
  content_hash : string prop;
  description : string prop;
  filename : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?content ?content_hash ?description ?filename ?id ?tags
    ?tags_all ~instance_id ~name __id =
  let __type = "aws_connect_contact_flow_module" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       contact_flow_module_id =
         Prop.computed __type __id "contact_flow_module_id";
       content = Prop.computed __type __id "content";
       content_hash = Prop.computed __type __id "content_hash";
       description = Prop.computed __type __id "description";
       filename = Prop.computed __type __id "filename";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_contact_flow_module
        (aws_connect_contact_flow_module ?content ?content_hash
           ?description ?filename ?id ?tags ?tags_all ~instance_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?content ?content_hash ?description ?filename
    ?id ?tags ?tags_all ~instance_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?content ?content_hash ?description ?filename ?id ?tags
      ?tags_all ~instance_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
