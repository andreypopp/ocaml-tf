(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action_point__action = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** action_point__action *)

type action_point = {
  point : string prop;  (** point *)
  action : action_point__action list;
}
[@@deriving yojson_of]
(** action_point *)

type parameter = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop option; [@option]  (** required *)
}
[@@deriving yojson_of]
(** parameter *)

type aws_appconfig_extension = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  action_point : action_point list;
  parameter : parameter list;
}
[@@deriving yojson_of]
(** aws_appconfig_extension *)

let action_point__action ?description ~name ~role_arn ~uri () :
    action_point__action =
  { description; name; role_arn; uri }

let action_point ~point ~action () : action_point = { point; action }

let parameter ?description ?required ~name () : parameter =
  { description; name; required }

let aws_appconfig_extension ?description ?id ?tags ?tags_all ~name
    ~action_point ~parameter () : aws_appconfig_extension =
  { description; id; name; tags; tags_all; action_point; parameter }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

let make ?description ?id ?tags ?tags_all ~name ~action_point
    ~parameter __id =
  let __type = "aws_appconfig_extension" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_extension
        (aws_appconfig_extension ?description ?id ?tags ?tags_all
           ~name ~action_point ~parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~action_point ~parameter __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~action_point
      ~parameter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
