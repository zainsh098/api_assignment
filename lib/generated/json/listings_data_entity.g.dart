import 'package:api_assignment/generated/json/base/json_convert_content.dart';
import 'package:api_assignment/model/listings_data_entity.dart';

ListingsDataEntity $ListingsDataEntityFromJson(Map<String, dynamic> json) {
	final ListingsDataEntity listingsDataEntity = ListingsDataEntity();
	final List<ListingsDataListings>? listings = jsonConvert.convertListNotNull<ListingsDataListings>(json['listings']);
	if (listings != null) {
		listingsDataEntity.listings = listings;
	}
	final String? nextPage = jsonConvert.convert<String>(json['nextPage']);
	if (nextPage != null) {
		listingsDataEntity.nextPage = nextPage;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		listingsDataEntity.message = message;
	}
	return listingsDataEntity;
}

Map<String, dynamic> $ListingsDataEntityToJson(ListingsDataEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['listings'] =  entity.listings?.map((v) => v.toJson()).toList();
	data['nextPage'] = entity.nextPage;
	data['message'] = entity.message;
	return data;
}

ListingsDataListings $ListingsDataListingsFromJson(Map<String, dynamic> json) {
	final ListingsDataListings listingsDataListings = ListingsDataListings();
	final String? sId = jsonConvert.convert<String>(json['_id']);
	if (sId != null) {
		listingsDataListings.sId = sId;
	}
	final String? deviceCondition = jsonConvert.convert<String>(json['deviceCondition']);
	if (deviceCondition != null) {
		listingsDataListings.deviceCondition = deviceCondition;
	}
	final String? listedBy = jsonConvert.convert<String>(json['listedBy']);
	if (listedBy != null) {
		listingsDataListings.listedBy = listedBy;
	}
	final String? deviceStorage = jsonConvert.convert<String>(json['deviceStorage']);
	if (deviceStorage != null) {
		listingsDataListings.deviceStorage = deviceStorage;
	}
	final List<ListingsDataListingsImages>? images = jsonConvert.convertListNotNull<ListingsDataListingsImages>(json['images']);
	if (images != null) {
		listingsDataListings.images = images;
	}
	final ListingsDataListingsDefaultImage? defaultImage = jsonConvert.convert<ListingsDataListingsDefaultImage>(json['defaultImage']);
	if (defaultImage != null) {
		listingsDataListings.defaultImage = defaultImage;
	}
	final String? listingLocation = jsonConvert.convert<String>(json['listingLocation']);
	if (listingLocation != null) {
		listingsDataListings.listingLocation = listingLocation;
	}
	final String? make = jsonConvert.convert<String>(json['make']);
	if (make != null) {
		listingsDataListings.make = make;
	}
	final String? marketingName = jsonConvert.convert<String>(json['marketingName']);
	if (marketingName != null) {
		listingsDataListings.marketingName = marketingName;
	}
	final String? mobileNumber = jsonConvert.convert<String>(json['mobileNumber']);
	if (mobileNumber != null) {
		listingsDataListings.mobileNumber = mobileNumber;
	}
	final String? model = jsonConvert.convert<String>(json['model']);
	if (model != null) {
		listingsDataListings.model = model;
	}
	final bool? verified = jsonConvert.convert<bool>(json['verified']);
	if (verified != null) {
		listingsDataListings.verified = verified;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		listingsDataListings.status = status;
	}
	final String? listingDate = jsonConvert.convert<String>(json['listingDate']);
	if (listingDate != null) {
		listingsDataListings.listingDate = listingDate;
	}
	final String? deviceRam = jsonConvert.convert<String>(json['deviceRam']);
	if (deviceRam != null) {
		listingsDataListings.deviceRam = deviceRam;
	}
	final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
	if (createdAt != null) {
		listingsDataListings.createdAt = createdAt;
	}
	final String? listingId = jsonConvert.convert<String>(json['listingId']);
	if (listingId != null) {
		listingsDataListings.listingId = listingId;
	}
	final int? listingNumPrice = jsonConvert.convert<int>(json['listingNumPrice']);
	if (listingNumPrice != null) {
		listingsDataListings.listingNumPrice = listingNumPrice;
	}
	final String? listingState = jsonConvert.convert<String>(json['listingState']);
	if (listingState != null) {
		listingsDataListings.listingState = listingState;
	}
	return listingsDataListings;
}

Map<String, dynamic> $ListingsDataListingsToJson(ListingsDataListings entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['_id'] = entity.sId;
	data['deviceCondition'] = entity.deviceCondition;
	data['listedBy'] = entity.listedBy;
	data['deviceStorage'] = entity.deviceStorage;
	data['images'] =  entity.images?.map((v) => v.toJson()).toList();
	data['defaultImage'] = entity.defaultImage?.toJson();
	data['listingLocation'] = entity.listingLocation;
	data['make'] = entity.make;
	data['marketingName'] = entity.marketingName;
	data['mobileNumber'] = entity.mobileNumber;
	data['model'] = entity.model;
	data['verified'] = entity.verified;
	data['status'] = entity.status;
	data['listingDate'] = entity.listingDate;
	data['deviceRam'] = entity.deviceRam;
	data['createdAt'] = entity.createdAt;
	data['listingId'] = entity.listingId;
	data['listingNumPrice'] = entity.listingNumPrice;
	data['listingState'] = entity.listingState;
	return data;
}

ListingsDataListingsImages $ListingsDataListingsImagesFromJson(Map<String, dynamic> json) {
	final ListingsDataListingsImages listingsDataListingsImages = ListingsDataListingsImages();
	final String? fullImage = jsonConvert.convert<String>(json['fullImage']);
	if (fullImage != null) {
		listingsDataListingsImages.fullImage = fullImage;
	}
	return listingsDataListingsImages;
}

Map<String, dynamic> $ListingsDataListingsImagesToJson(ListingsDataListingsImages entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['fullImage'] = entity.fullImage;
	return data;
}

ListingsDataListingsDefaultImage $ListingsDataListingsDefaultImageFromJson(Map<String, dynamic> json) {
	final ListingsDataListingsDefaultImage listingsDataListingsDefaultImage = ListingsDataListingsDefaultImage();
	final String? fullImage = jsonConvert.convert<String>(json['fullImage']);
	if (fullImage != null) {
		listingsDataListingsDefaultImage.fullImage = fullImage;
	}
	return listingsDataListingsDefaultImage;
}

Map<String, dynamic> $ListingsDataListingsDefaultImageToJson(ListingsDataListingsDefaultImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['fullImage'] = entity.fullImage;
	return data;
}