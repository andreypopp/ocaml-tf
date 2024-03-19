(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~content
    ~instance_id ~language_code ~name __resource_id =
  let __resource_type = "aws_connect_vocabulary" in
  let __resource =
    aws_connect_vocabulary ?id ?tags ?tags_all ?timeouts ~content
      ~instance_id ~language_code ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_vocabulary __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       content =
         Prop.computed __resource_type __resource_id "content";
       failure_reason =
         Prop.computed __resource_type __resource_id "failure_reason";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       language_code =
         Prop.computed __resource_type __resource_id "language_code";
       last_modified_time =
         Prop.computed __resource_type __resource_id
           "last_modified_time";
       name = Prop.computed __resource_type __resource_id "name";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vocabulary_id =
         Prop.computed __resource_type __resource_id "vocabulary_id";
     }
      : t)
  in
  __resource_attributes
