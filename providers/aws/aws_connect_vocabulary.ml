(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_connect_vocabulary = {
  content : string prop;  (** content *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  language_code : string prop;  (** language_code *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_connect_vocabulary *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_connect_vocabulary ?id ?tags ?tags_all ?timeouts ~content
    ~instance_id ~language_code ~name () : aws_connect_vocabulary =
  {
    content;
    id;
    instance_id;
    language_code;
    name;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  content : string prop;
  failure_reason : string prop;
  id : string prop;
  instance_id : string prop;
  language_code : string prop;
  last_modified_time : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vocabulary_id : string prop;
}

let make ?id ?tags ?tags_all ?timeouts ~content ~instance_id
    ~language_code ~name __id =
  let __type = "aws_connect_vocabulary" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       content = Prop.computed __type __id "content";
       failure_reason = Prop.computed __type __id "failure_reason";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       language_code = Prop.computed __type __id "language_code";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vocabulary_id = Prop.computed __type __id "vocabulary_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_vocabulary
        (aws_connect_vocabulary ?id ?tags ?tags_all ?timeouts
           ~content ~instance_id ~language_code ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~content
    ~instance_id ~language_code ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~content ~instance_id
      ~language_code ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
