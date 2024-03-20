(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dataexchange_revision = {
  comment : string prop option; [@option]  (** comment *)
  data_set_id : string prop;  (** data_set_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dataexchange_revision *)

let aws_dataexchange_revision ?comment ?id ?tags ?tags_all
    ~data_set_id () : aws_dataexchange_revision =
  { comment; data_set_id; id; tags; tags_all }

type t = {
  arn : string prop;
  comment : string prop;
  data_set_id : string prop;
  id : string prop;
  revision_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?comment ?id ?tags ?tags_all ~data_set_id __id =
  let __type = "aws_dataexchange_revision" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       comment = Prop.computed __type __id "comment";
       data_set_id = Prop.computed __type __id "data_set_id";
       id = Prop.computed __type __id "id";
       revision_id = Prop.computed __type __id "revision_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dataexchange_revision
        (aws_dataexchange_revision ?comment ?id ?tags ?tags_all
           ~data_set_id ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ?tags ?tags_all ~data_set_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ?tags ?tags_all ~data_set_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
