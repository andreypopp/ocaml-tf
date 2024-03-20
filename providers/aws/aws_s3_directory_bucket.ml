(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type location = {
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** location *)

type aws_s3_directory_bucket = {
  bucket : string prop;  (** bucket *)
  data_redundancy : string prop option; [@option]
      (** data_redundancy *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  location : location list;
}
[@@deriving yojson_of]
(** aws_s3_directory_bucket *)

let location ?type_ ~name () : location = { name; type_ }

let aws_s3_directory_bucket ?data_redundancy ?force_destroy ?type_
    ~bucket ~location () : aws_s3_directory_bucket =
  { bucket; data_redundancy; force_destroy; type_; location }

type t = {
  arn : string prop;
  bucket : string prop;
  data_redundancy : string prop;
  force_destroy : bool prop;
  id : string prop;
  type_ : string prop;
}

let make ?data_redundancy ?force_destroy ?type_ ~bucket ~location
    __id =
  let __type = "aws_s3_directory_bucket" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       bucket = Prop.computed __type __id "bucket";
       data_redundancy = Prop.computed __type __id "data_redundancy";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_directory_bucket
        (aws_s3_directory_bucket ?data_redundancy ?force_destroy
           ?type_ ~bucket ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?data_redundancy ?force_destroy ?type_
    ~bucket ~location __id =
  let (r : _ Tf_core.resource) =
    make ?data_redundancy ?force_destroy ?type_ ~bucket ~location
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
