(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_authentication_profile = {
  authentication_profile_content : string prop;
  authentication_profile_name : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_authentication_profile) -> ()

let yojson_of_aws_redshift_authentication_profile =
  (function
   | {
       authentication_profile_content =
         v_authentication_profile_content;
       authentication_profile_name = v_authentication_profile_name;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
           yojson_of_prop yojson_of_string
             v_authentication_profile_name
         in
         ("authentication_profile_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_authentication_profile_content
         in
         ("authentication_profile_content", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_authentication_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_authentication_profile

[@@@deriving.end]

let aws_redshift_authentication_profile ?id
    ~authentication_profile_content ~authentication_profile_name () :
    aws_redshift_authentication_profile =
  { authentication_profile_content; authentication_profile_name; id }

type t = {
  tf_name : string;
  authentication_profile_content : string prop;
  authentication_profile_name : string prop;
  id : string prop;
}

let make ?id ~authentication_profile_content
    ~authentication_profile_name __id =
  let __type = "aws_redshift_authentication_profile" in
  let __attrs =
    ({
       tf_name = __id;
       authentication_profile_content =
         Prop.computed __type __id "authentication_profile_content";
       authentication_profile_name =
         Prop.computed __type __id "authentication_profile_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_authentication_profile
        (aws_redshift_authentication_profile ?id
           ~authentication_profile_content
           ~authentication_profile_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~authentication_profile_content
    ~authentication_profile_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~authentication_profile_content
      ~authentication_profile_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
