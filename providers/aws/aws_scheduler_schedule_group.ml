(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_scheduler_schedule_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_scheduler_schedule_group *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_scheduler_schedule_group ?id ?name ?name_prefix ?tags
    ?tags_all ?timeouts () : aws_scheduler_schedule_group =
  { id; name; name_prefix; tags; tags_all; timeouts }

type t = {
  arn : string prop;
  creation_date : string prop;
  id : string prop;
  last_modification_date : string prop;
  name : string prop;
  name_prefix : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?name_prefix ?tags ?tags_all ?timeouts __id =
  let __type = "aws_scheduler_schedule_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       creation_date = Prop.computed __type __id "creation_date";
       id = Prop.computed __type __id "id";
       last_modification_date =
         Prop.computed __type __id "last_modification_date";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_scheduler_schedule_group
        (aws_scheduler_schedule_group ?id ?name ?name_prefix ?tags
           ?tags_all ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ?tags ?tags_all
    ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ?tags ?tags_all ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
