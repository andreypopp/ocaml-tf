(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_transcribe_medical_vocabulary = {
  id : string prop option; [@option]  (** id *)
  language_code : string prop;  (** language_code *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vocabulary_file_uri : string prop;  (** vocabulary_file_uri *)
  vocabulary_name : string prop;  (** vocabulary_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_transcribe_medical_vocabulary *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_transcribe_medical_vocabulary ?id ?tags ?tags_all ?timeouts
    ~language_code ~vocabulary_file_uri ~vocabulary_name () :
    aws_transcribe_medical_vocabulary =
  {
    id;
    language_code;
    tags;
    tags_all;
    vocabulary_file_uri;
    vocabulary_name;
    timeouts;
  }

type t = {
  arn : string prop;
  download_uri : string prop;
  id : string prop;
  language_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vocabulary_file_uri : string prop;
  vocabulary_name : string prop;
}

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~language_code
    ~vocabulary_file_uri ~vocabulary_name __resource_id =
  let __resource_type = "aws_transcribe_medical_vocabulary" in
  let __resource =
    aws_transcribe_medical_vocabulary ?id ?tags ?tags_all ?timeouts
      ~language_code ~vocabulary_file_uri ~vocabulary_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transcribe_medical_vocabulary __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       download_uri =
         Prop.computed __resource_type __resource_id "download_uri";
       id = Prop.computed __resource_type __resource_id "id";
       language_code =
         Prop.computed __resource_type __resource_id "language_code";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vocabulary_file_uri =
         Prop.computed __resource_type __resource_id
           "vocabulary_file_uri";
       vocabulary_name =
         Prop.computed __resource_type __resource_id
           "vocabulary_name";
     }
      : t)
  in
  __resource_attributes
