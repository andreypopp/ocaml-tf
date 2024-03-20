(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sfn_activity = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_sfn_activity *)

let aws_sfn_activity ?id ?tags ?tags_all ~name () : aws_sfn_activity
    =
  { id; name; tags; tags_all }

type t = {
  creation_date : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~name __id =
  let __type = "aws_sfn_activity" in
  let __attrs =
    ({
       creation_date = Prop.computed __type __id "creation_date";
       id = Prop.computed __type __id "id";
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
      yojson_of_aws_sfn_activity
        (aws_sfn_activity ?id ?tags ?tags_all ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
