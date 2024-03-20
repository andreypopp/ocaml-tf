(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_connect_security_profile = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  permissions : string prop list option; [@option]
      (** permissions *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_connect_security_profile *)

let aws_connect_security_profile ?description ?id ?permissions ?tags
    ?tags_all ~instance_id ~name () : aws_connect_security_profile =
  { description; id; instance_id; name; permissions; tags; tags_all }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  organization_resource_id : string prop;
  permissions : string list prop;
  security_profile_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?permissions ?tags ?tags_all ~instance_id
    ~name __id =
  let __type = "aws_connect_security_profile" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       organization_resource_id =
         Prop.computed __type __id "organization_resource_id";
       permissions = Prop.computed __type __id "permissions";
       security_profile_id =
         Prop.computed __type __id "security_profile_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_security_profile
        (aws_connect_security_profile ?description ?id ?permissions
           ?tags ?tags_all ~instance_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?permissions ?tags ?tags_all
    ~instance_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?permissions ?tags ?tags_all ~instance_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
