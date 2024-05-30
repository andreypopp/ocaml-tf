(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_brand = {
  agree_to_custom_privacy_policy : bool prop option; [@option]
  brand_id : string prop option; [@option]
  custom_privacy_policy_url : string prop option; [@option]
  default_app_app_instance_id : string prop option; [@option]
  default_app_app_link_name : string prop option; [@option]
  default_app_classic_application_uri : string prop option; [@option]
  locale : string prop option; [@option]
  name : string prop;
  remove_powered_by_okta : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_brand) -> ()

let yojson_of_okta_brand =
  (function
   | {
       agree_to_custom_privacy_policy =
         v_agree_to_custom_privacy_policy;
       brand_id = v_brand_id;
       custom_privacy_policy_url = v_custom_privacy_policy_url;
       default_app_app_instance_id = v_default_app_app_instance_id;
       default_app_app_link_name = v_default_app_app_link_name;
       default_app_classic_application_uri =
         v_default_app_classic_application_uri;
       locale = v_locale;
       name = v_name;
       remove_powered_by_okta = v_remove_powered_by_okta;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_remove_powered_by_okta with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "remove_powered_by_okta", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_locale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locale", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_app_classic_application_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_app_classic_application_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_app_app_link_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_app_app_link_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_app_app_instance_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_app_app_instance_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_privacy_policy_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_privacy_policy_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_brand_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "brand_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_agree_to_custom_privacy_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "agree_to_custom_privacy_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_brand -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_brand

[@@@deriving.end]

let okta_brand ?agree_to_custom_privacy_policy ?brand_id
    ?custom_privacy_policy_url ?default_app_app_instance_id
    ?default_app_app_link_name ?default_app_classic_application_uri
    ?locale ?remove_powered_by_okta ~name () : okta_brand =
  {
    agree_to_custom_privacy_policy;
    brand_id;
    custom_privacy_policy_url;
    default_app_app_instance_id;
    default_app_app_link_name;
    default_app_classic_application_uri;
    locale;
    name;
    remove_powered_by_okta;
  }

type t = {
  tf_name : string;
  agree_to_custom_privacy_policy : bool prop;
  brand_id : string prop;
  custom_privacy_policy_url : string prop;
  default_app_app_instance_id : string prop;
  default_app_app_link_name : string prop;
  default_app_classic_application_uri : string prop;
  email_domain_id : string prop;
  id : string prop;
  is_default : bool prop;
  links : string prop;
  locale : string prop;
  name : string prop;
  remove_powered_by_okta : bool prop;
}

let make ?agree_to_custom_privacy_policy ?brand_id
    ?custom_privacy_policy_url ?default_app_app_instance_id
    ?default_app_app_link_name ?default_app_classic_application_uri
    ?locale ?remove_powered_by_okta ~name __id =
  let __type = "okta_brand" in
  let __attrs =
    ({
       tf_name = __id;
       agree_to_custom_privacy_policy =
         Prop.computed __type __id "agree_to_custom_privacy_policy";
       brand_id = Prop.computed __type __id "brand_id";
       custom_privacy_policy_url =
         Prop.computed __type __id "custom_privacy_policy_url";
       default_app_app_instance_id =
         Prop.computed __type __id "default_app_app_instance_id";
       default_app_app_link_name =
         Prop.computed __type __id "default_app_app_link_name";
       default_app_classic_application_uri =
         Prop.computed __type __id
           "default_app_classic_application_uri";
       email_domain_id = Prop.computed __type __id "email_domain_id";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       links = Prop.computed __type __id "links";
       locale = Prop.computed __type __id "locale";
       name = Prop.computed __type __id "name";
       remove_powered_by_okta =
         Prop.computed __type __id "remove_powered_by_okta";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_brand
        (okta_brand ?agree_to_custom_privacy_policy ?brand_id
           ?custom_privacy_policy_url ?default_app_app_instance_id
           ?default_app_app_link_name
           ?default_app_classic_application_uri ?locale
           ?remove_powered_by_okta ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?agree_to_custom_privacy_policy ?brand_id
    ?custom_privacy_policy_url ?default_app_app_instance_id
    ?default_app_app_link_name ?default_app_classic_application_uri
    ?locale ?remove_powered_by_okta ~name __id =
  let (r : _ Tf_core.resource) =
    make ?agree_to_custom_privacy_policy ?brand_id
      ?custom_privacy_policy_url ?default_app_app_instance_id
      ?default_app_app_link_name ?default_app_classic_application_uri
      ?locale ?remove_powered_by_okta ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
