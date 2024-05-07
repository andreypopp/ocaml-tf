(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type location = {
  name : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : location) -> ()

let yojson_of_location =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_location

[@@@deriving.end]

type aws_s3_directory_bucket = {
  bucket : string prop;
  data_redundancy : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  location : location list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_directory_bucket) -> ()

let yojson_of_aws_s3_directory_bucket =
  (function
   | {
       bucket = v_bucket;
       data_redundancy = v_data_redundancy;
       force_destroy = v_force_destroy;
       type_ = v_type_;
       location = v_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_location v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_redundancy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_redundancy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_directory_bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_directory_bucket

[@@@deriving.end]

let location ?type_ ~name () : location = { name; type_ }

let aws_s3_directory_bucket ?data_redundancy ?force_destroy ?type_
    ?(location = []) ~bucket () : aws_s3_directory_bucket =
  { bucket; data_redundancy; force_destroy; type_; location }

type t = {
  tf_name : string;
  arn : string prop;
  bucket : string prop;
  data_redundancy : string prop;
  force_destroy : bool prop;
  id : string prop;
  type_ : string prop;
}

let make ?data_redundancy ?force_destroy ?type_ ?(location = [])
    ~bucket __id =
  let __type = "aws_s3_directory_bucket" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?type_ ~location ~bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?data_redundancy ?force_destroy ?type_
    ?(location = []) ~bucket __id =
  let (r : _ Tf_core.resource) =
    make ?data_redundancy ?force_destroy ?type_ ~location ~bucket
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
