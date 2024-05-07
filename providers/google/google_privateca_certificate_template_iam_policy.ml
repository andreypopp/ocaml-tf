(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_privateca_certificate_template_iam_policy = {
  certificate_template : string prop;
  id : string prop option; [@option]
  location : string prop option; [@option]
  policy_data : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_privateca_certificate_template_iam_policy) -> ()

let yojson_of_google_privateca_certificate_template_iam_policy =
  (function
   | {
       certificate_template = v_certificate_template;
       id = v_id;
       location = v_location;
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_template
         in
         ("certificate_template", arg) :: bnds
       in
       `Assoc bnds
    : google_privateca_certificate_template_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_privateca_certificate_template_iam_policy

[@@@deriving.end]

let google_privateca_certificate_template_iam_policy ?id ?location
    ?project ~certificate_template ~policy_data () :
    google_privateca_certificate_template_iam_policy =
  { certificate_template; id; location; policy_data; project }

type t = {
  tf_name : string;
  certificate_template : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?location ?project ~certificate_template ~policy_data
    __id =
  let __type = "google_privateca_certificate_template_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_template =
         Prop.computed __type __id "certificate_template";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_privateca_certificate_template_iam_policy
        (google_privateca_certificate_template_iam_policy ?id
           ?location ?project ~certificate_template ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~certificate_template
    ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~certificate_template ~policy_data
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
