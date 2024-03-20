(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dataexchange_data_set = {
  asset_type : string prop;  (** asset_type *)
  description : string prop;  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dataexchange_data_set *)

let aws_dataexchange_data_set ?id ?tags ?tags_all ~asset_type
    ~description ~name () : aws_dataexchange_data_set =
  { asset_type; description; id; name; tags; tags_all }

type t = {
  arn : string prop;
  asset_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~asset_type ~description ~name __id =
  let __type = "aws_dataexchange_data_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       asset_type = Prop.computed __type __id "asset_type";
       description = Prop.computed __type __id "description";
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
      yojson_of_aws_dataexchange_data_set
        (aws_dataexchange_data_set ?id ?tags ?tags_all ~asset_type
           ~description ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~asset_type ~description
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~asset_type ~description ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
