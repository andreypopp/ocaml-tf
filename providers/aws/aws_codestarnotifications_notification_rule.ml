(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target = {
  address : string prop;  (** address *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** target *)

type aws_codestarnotifications_notification_rule = {
  detail_type : string prop;  (** detail_type *)
  event_type_ids : string prop list;  (** event_type_ids *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource : string prop;  (** resource *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target : target list;
}
[@@deriving yojson_of]
(** aws_codestarnotifications_notification_rule *)

let target ?type_ ~address () : target = { address; type_ }

let aws_codestarnotifications_notification_rule ?id ?status ?tags
    ?tags_all ~detail_type ~event_type_ids ~name ~resource ~target ()
    : aws_codestarnotifications_notification_rule =
  {
    detail_type;
    event_type_ids;
    id;
    name;
    resource;
    status;
    tags;
    tags_all;
    target;
  }

type t = {
  arn : string prop;
  detail_type : string prop;
  event_type_ids : string list prop;
  id : string prop;
  name : string prop;
  resource : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?status ?tags ?tags_all ~detail_type ~event_type_ids
    ~name ~resource ~target __id =
  let __type = "aws_codestarnotifications_notification_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       detail_type = Prop.computed __type __id "detail_type";
       event_type_ids = Prop.computed __type __id "event_type_ids";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource = Prop.computed __type __id "resource";
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
      yojson_of_aws_codestarnotifications_notification_rule
        (aws_codestarnotifications_notification_rule ?id ?status
           ?tags ?tags_all ~detail_type ~event_type_ids ~name
           ~resource ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ?tags ?tags_all ~detail_type
    ~event_type_ids ~name ~resource ~target __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ?tags ?tags_all ~detail_type ~event_type_ids
      ~name ~resource ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
