{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.3.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "ImageMatching": "2.0",
            "StructureFromMotion": "3.3",
            "FeatureExtraction": "1.3",
            "DepthMap": "5.0",
            "Texturing": "6.0",
            "Meshing": "7.0",
            "PrepareDenseScene": "3.1",
            "CameraInit": "9.0",
            "FeatureMatching": "2.0",
            "MeshFiltering": "3.0",
            "DepthMapFilter": "4.0"
        }
    },
    "graph": {
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                2000,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "c043606b6f40b422b3fd28910c80391465093a9e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_1.output}",
                "imagesFolder": "{DepthMap_1.imagesFolder}",
                "inputMesh": "{MeshFiltering_1.outputMesh}",
                "inputRefMesh": "",
                "textureSide": 8192,
                "downscale": 2,
                "outputMeshFileType": "obj",
                "colorMapping": {
                    "enable": true,
                    "colorMappingFileType": "exr"
                },
                "bumpMapping": {
                    "enable": true,
                    "bumpType": "Normal",
                    "normalFileType": "exr",
                    "heightFileType": "exr"
                },
                "displacementMapping": {
                    "enable": true,
                    "displacementMappingFileType": "exr"
                },
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "workingColorSpace": "sRGB",
                "outputColorSpace": "AUTO",
                "correctEV": true,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr"
            }
        },
        "Meshing_1": {
            "nodeType": "Meshing",
            "position": [
                1600,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "b8a0159af4b826d0c868062a8902d3a8a4102c3c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_1.input}",
                "depthMapsFolder": "{DepthMapFilter_1.output}",
                "outputMeshFileType": "obj",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 1.0,
                        "y": 1.0,
                        "z": 1.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10.0,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "minVis": 2,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "DepthMapFilter_1": {
            "nodeType": "DepthMapFilter",
            "position": [
                1400,
                0
            ],
            "parallelization": {
                "blockSize": 24,
                "size": 61,
                "split": 3
            },
            "uids": {
                "0": "e9d7acc4e3cc34aee8a1c1ad0bc723c4b0d2565b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_1.input}",
                "depthMapsFolder": "{DepthMap_1.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixToleranceFactor": 2.0,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr"
            }
        },
        "ImageMatching_1": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 61,
                "split": 1
            },
            "uids": {
                "0": "6f784a7c474c82e3aba366faf9b77babeab5eff8"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_1.input}",
                "featuresFolders": [
                    "{FeatureExtraction_1.output}"
                ],
                "method": "SequentialAndVocabularyTree",
                "tree": "${ALICEVISION_VOCTREE}",
                "weights": "",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 40,
                "nbNeighbors": 5,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt"
            }
        },
        "FeatureExtraction_1": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 61,
                "split": 2
            },
            "uids": {
                "0": "adf9c160e5bdbd81436805d544a9012adc01327a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "masksFolder": "",
                "maskExtension": "png",
                "maskInvert": false,
                "describerTypes": [
                    "dspsift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "workingColorSpace": "sRGB",
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_1": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 61,
                "split": 1
            },
            "uids": {
                "0": "151cb0d228b76cb09bc2cc3896019bbcf2ec7d7e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_1.input}",
                "featuresFolders": "{FeatureMatching_1.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_1.output}"
                ],
                "describerTypes": "{FeatureMatching_1.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Scale",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "nbFirstUnstableCameras": 30,
                "maxImagesPerGroup": 30,
                "bundleAdjustmentMaxOutliers": 50,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "rigMinNbCamerasForCalibration": 20,
                "lockAllIntrinsics": false,
                "minNbCamerasToRefinePrincipalPoint": 3,
                "filterTrackForks": false,
                "computeStructureColor": true,
                "useAutoTransform": true,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "logIntermediateSteps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "PrepareDenseScene_1": {
            "nodeType": "PrepareDenseScene",
            "position": [
                1000,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 61,
                "split": 2
            },
            "uids": {
                "0": "5d7e172d3badbe33c25294edd868e928675bbd47"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "imagesFolders": [],
                "masksFolders": [],
                "maskExtension": "png",
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "undistorted": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.{outputFileTypeValue}"
            }
        },
        "CameraInit_1": {
            "nodeType": "CameraInit",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 61,
                "split": 1
            },
            "uids": {
                "0": "ba19864a2c3c393e86bdd5e34a023249eea6f7b0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 4811735,
                        "poseId": 4811735,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_55.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 28799593,
                        "poseId": 28799593,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_54.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 38521800,
                        "poseId": 38521800,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_61.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 119476620,
                        "poseId": 119476620,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_60.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 168224476,
                        "poseId": 168224476,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_49.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 174564759,
                        "poseId": 174564759,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_48.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 176836983,
                        "poseId": 176836983,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_44.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 179095202,
                        "poseId": 179095202,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_45.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 184013406,
                        "poseId": 184013406,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_47.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 215734058,
                        "poseId": 215734058,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_46.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 218152430,
                        "poseId": 218152430,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_43.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 219438222,
                        "poseId": 219438222,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_42.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 220388633,
                        "poseId": 220388633,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_40.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 221129318,
                        "poseId": 221129318,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_41.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 350330051,
                        "poseId": 350330051,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_59.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 352288053,
                        "poseId": 352288053,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_58.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 537316263,
                        "poseId": 537316263,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_50.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 539674873,
                        "poseId": 539674873,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_51.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 540144275,
                        "poseId": 540144275,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_56.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 543568894,
                        "poseId": 543568894,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_53.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 545020583,
                        "poseId": 545020583,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_52.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 805672540,
                        "poseId": 805672540,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_1.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 811975376,
                        "poseId": 811975376,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_3.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 814595332,
                        "poseId": 814595332,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_5.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 815899680,
                        "poseId": 815899680,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_4.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 819347460,
                        "poseId": 819347460,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_7.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 819987629,
                        "poseId": 819987629,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_2.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 821496459,
                        "poseId": 821496459,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_6.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 835335865,
                        "poseId": 835335865,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_8.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 837615659,
                        "poseId": 837615659,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_9.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 856157484,
                        "poseId": 856157484,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_13.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 860560147,
                        "poseId": 860560147,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_15.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 867694357,
                        "poseId": 867694357,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_14.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 868736112,
                        "poseId": 868736112,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_18.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 869961300,
                        "poseId": 869961300,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_17.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 870422529,
                        "poseId": 870422529,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_16.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 872236508,
                        "poseId": 872236508,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_19.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 948555922,
                        "poseId": 948555922,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_25.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 950625058,
                        "poseId": 950625058,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_24.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1044816515,
                        "poseId": 1044816515,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_29.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1048552389,
                        "poseId": 1048552389,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_28.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1060751644,
                        "poseId": 1060751644,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_21.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1062539076,
                        "poseId": 1062539076,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_20.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1063287054,
                        "poseId": 1063287054,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_27.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1063584503,
                        "poseId": 1063584503,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_26.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1072449836,
                        "poseId": 1072449836,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_23.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1073625691,
                        "poseId": 1073625691,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_22.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1131402540,
                        "poseId": 1131402540,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_11.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1150564800,
                        "poseId": 1150564800,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_12.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1152131144,
                        "poseId": 1152131144,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_10.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1433326995,
                        "poseId": 1433326995,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_32.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1435411038,
                        "poseId": 1435411038,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_31.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1439161723,
                        "poseId": 1439161723,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_30.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1568683279,
                        "poseId": 1568683279,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_57.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1875497190,
                        "poseId": 1875497190,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_39.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1877972694,
                        "poseId": 1877972694,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_38.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1880437848,
                        "poseId": 1880437848,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_37.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1885337492,
                        "poseId": 1885337492,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_36.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1887572216,
                        "poseId": 1887572216,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_33.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1888030328,
                        "poseId": 1888030328,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_34.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1888861845,
                        "poseId": 1888861845,
                        "path": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames/frame_35.jpg",
                        "intrinsicId": 2923150850,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 2923150850,
                        "initialFocalLength": -1.0,
                        "focalLength": 77.25483399593904,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1080,
                        "height": 1920,
                        "sensorWidth": 36.0,
                        "sensorHeight": 24.0,
                        "serialNumber": "C:/Users/shamb/OneDrive/Desktop/Week_4_Assignment/frames",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "unknown",
                        "distortionInitializationMode": "none",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "undistortionOffset": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "undistortionParams": [],
                        "locked": false
                    }
                ],
                "sensorDatabase": "${ALICEVISION_SENSOR_DB}",
                "lensCorrectionProfileInfo": "${ALICEVISION_LENS_PROFILE_INFO}",
                "lensCorrectionProfileSearchIgnoreCameraModel": true,
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1",
                    "3deanamorphic4",
                    "3deradial4",
                    "3declassicld"
                ],
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "DepthMap_1": {
            "nodeType": "DepthMap",
            "position": [
                1200,
                0
            ],
            "parallelization": {
                "blockSize": 12,
                "size": 61,
                "split": 6
            },
            "uids": {
                "0": "6694dd1e47df3ef2526570f737fdb169ced2ddf8"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_1.input}",
                "imagesFolder": "{PrepareDenseScene_1.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "tiling": {
                    "tileBufferWidth": 1024,
                    "tileBufferHeight": 1024,
                    "tilePadding": 64,
                    "autoAdjustSmallImage": true
                },
                "chooseTCamsPerTile": true,
                "maxTCams": 10,
                "sgm": {
                    "sgmScale": 2,
                    "sgmStepXY": 2,
                    "sgmStepZ": -1,
                    "sgmMaxTCamsPerTile": 4,
                    "sgmWSH": 4,
                    "sgmUseSfmSeeds": true,
                    "sgmSeedsRangeInflate": 0.2,
                    "sgmDepthThicknessInflate": 0.0,
                    "sgmMaxSimilarity": 1.0,
                    "sgmGammaC": 5.5,
                    "sgmGammaP": 8.0,
                    "sgmP1": 10.0,
                    "sgmP2Weighting": 100.0,
                    "sgmMaxDepths": 1500,
                    "sgmFilteringAxes": "YX",
                    "sgmDepthListPerTile": true,
                    "sgmUseConsistentScale": false
                },
                "refine": {
                    "refineEnabled": true,
                    "refineScale": 1,
                    "refineStepXY": 1,
                    "refineMaxTCamsPerTile": 4,
                    "refineSubsampling": 10,
                    "refineHalfNbDepths": 15,
                    "refineWSH": 3,
                    "refineSigma": 15.0,
                    "refineGammaC": 15.5,
                    "refineGammaP": 8.0,
                    "refineInterpolateMiddleDepth": false,
                    "refineUseConsistentScale": false
                },
                "colorOptimization": {
                    "colorOptimizationEnabled": true,
                    "colorOptimizationNbIterations": 100
                },
                "customPatchPattern": {
                    "sgmUseCustomPatchPattern": false,
                    "refineUseCustomPatchPattern": false,
                    "customPatchPatternSubparts": [],
                    "customPatchPatternGroupSubpartsPerLevel": false
                },
                "intermediateResults": {
                    "exportIntermediateDepthSimMaps": false,
                    "exportIntermediateNormalMaps": false,
                    "exportIntermediateVolumes": false,
                    "exportIntermediateCrossVolumes": false,
                    "exportIntermediateTopographicCutVolumes": false,
                    "exportIntermediateVolume9pCsv": false,
                    "exportTilePattern": false
                },
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr",
                "tilePattern": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_tilePattern.obj",
                "depthSgm": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgm.exr",
                "depthSgmUpscaled": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgmUpscaled.exr",
                "depthRefined": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_refinedFused.exr"
            }
        },
        "MeshFiltering_1": {
            "nodeType": "MeshFiltering",
            "position": [
                1800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "eeb900b7ffdd417c27ea155588bc1de4cb3230fb"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_1.outputMesh}",
                "outputMeshFileType": "obj",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }
        },
        "FeatureMatching_1": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                0
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 61,
                "split": 4
            },
            "uids": {
                "0": "9e1e3ab9693bf8b8950c2377f86b6467bad58168"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_1.input}",
                "featuresFolders": "{ImageMatching_1.featuresFolders}",
                "imagePairsList": "{ImageMatching_1.output}",
                "describerTypes": "{FeatureExtraction_1.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "minRequired2DMotion": -1.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        }
    }
}