(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_snapshot_schedule = {
  definitions : string prop list;  (** definitions *)
  description : string prop option; [@option]  (** description *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop option; [@option]  (** identifier *)
  identifier_prefix : string prop option; [@option]
      (** identifier_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_snapshot_schedule *)

let aws_redshift_snapshot_schedule ?description ?force_destroy ?id
    ?identifier ?identifier_prefix ?tags ?tags_all ~definitions () :
    aws_redshift_snapshot_schedule =
  {
    definitions;
    description;
    force_destroy;
    id;
    identifier;
    identifier_prefix;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  definitions : string list prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?force_destroy ?id ?identifier
    ?identifier_prefix ?tags ?tags_all ~definitions __id =
  let __type = "aws_redshift_snapshot_schedule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       definitions = Prop.computed __type __id "definitions";
       description = Prop.computed __type __id "description";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       identifier_prefix =
         Prop.computed __type __id "identifier_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_snapshot_schedule
        (aws_redshift_snapshot_schedule ?description ?force_destroy
           ?id ?identifier ?identifier_prefix ?tags ?tags_all
           ~definitions ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_destroy ?id ?identifier
    ?identifier_prefix ?tags ?tags_all ~definitions __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_destroy ?id ?identifier
      ?identifier_prefix ?tags ?tags_all ~definitions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
