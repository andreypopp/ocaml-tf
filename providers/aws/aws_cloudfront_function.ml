(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_function = {
  code : string prop;  (** code *)
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  publish : bool prop option; [@option]  (** publish *)
  runtime : string prop;  (** runtime *)
}
[@@deriving yojson_of]
(** aws_cloudfront_function *)

let aws_cloudfront_function ?comment ?id ?publish ~code ~name
    ~runtime () : aws_cloudfront_function =
  { code; comment; id; name; publish; runtime }

type t = {
  arn : string prop;
  code : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  live_stage_etag : string prop;
  name : string prop;
  publish : bool prop;
  runtime : string prop;
  status : string prop;
}

let register ?tf_module ?comment ?id ?publish ~code ~name ~runtime
    __resource_id =
  let __resource_type = "aws_cloudfront_function" in
  let __resource =
    aws_cloudfront_function ?comment ?id ?publish ~code ~name
      ~runtime ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_function __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       code = Prop.computed __resource_type __resource_id "code";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       live_stage_etag =
         Prop.computed __resource_type __resource_id
           "live_stage_etag";
       name = Prop.computed __resource_type __resource_id "name";
       publish =
         Prop.computed __resource_type __resource_id "publish";
       runtime =
         Prop.computed __resource_type __resource_id "runtime";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
