(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type reservation_plan_settings = {
  commitment : string prop;  (** commitment *)
  renewal_type : string prop;  (** renewal_type *)
  reserved_slots : float prop;  (** reserved_slots *)
}
[@@deriving yojson_of]
(** reservation_plan_settings *)

type aws_media_convert_queue = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  pricing_plan : string prop option; [@option]  (** pricing_plan *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  reservation_plan_settings : reservation_plan_settings list;
}
[@@deriving yojson_of]
(** aws_media_convert_queue *)

let reservation_plan_settings ~commitment ~renewal_type
    ~reserved_slots () : reservation_plan_settings =
  { commitment; renewal_type; reserved_slots }

let aws_media_convert_queue ?description ?id ?pricing_plan ?status
    ?tags ?tags_all ~name ~reservation_plan_settings () :
    aws_media_convert_queue =
  {
    description;
    id;
    name;
    pricing_plan;
    status;
    tags;
    tags_all;
    reservation_plan_settings;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  pricing_plan : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?pricing_plan ?status ?tags ?tags_all ~name
    ~reservation_plan_settings __id =
  let __type = "aws_media_convert_queue" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       pricing_plan = Prop.computed __type __id "pricing_plan";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_media_convert_queue
        (aws_media_convert_queue ?description ?id ?pricing_plan
           ?status ?tags ?tags_all ~name ~reservation_plan_settings
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?pricing_plan ?status ?tags
    ?tags_all ~name ~reservation_plan_settings __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?pricing_plan ?status ?tags ?tags_all ~name
      ~reservation_plan_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
