(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_image_iam_policy = {
  id : string prop option; [@option]
  image : string prop;
  policy_data : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_image_iam_policy) -> ()

let yojson_of_google_compute_image_iam_policy =
  (function
   | {
       id = v_id;
       image = v_image;
       policy_data = v_policy_data;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_data in
         ("policy_data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_image_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_image_iam_policy

[@@@deriving.end]

let google_compute_image_iam_policy ?id ?project ~image ~policy_data
    () : google_compute_image_iam_policy =
  { id; image; policy_data; project }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  image : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?project ~image ~policy_data __id =
  let __type = "google_compute_image_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       image = Prop.computed __type __id "image";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_image_iam_policy
        (google_compute_image_iam_policy ?id ?project ~image
           ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~image ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~image ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
